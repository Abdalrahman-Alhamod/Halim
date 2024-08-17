// ignore_for_file: unused_field

import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/model/base_models.dart';
import 'package:halim/core/data/sources/remote/services/web_socket_service.dart';
import 'package:halim/src/chat/data/models/chat_broadcast_token_model.dart';

import '../../../../core/data/model/socket_data_model.dart';
import '../../../../core/data/model/subscription_data_model.dart';
import '../../../../core/data/model/subscription_message_model.dart';
import '../../../../core/data/sources/remote/app_url.dart';
import '../../../../core/data/sources/remote/services/api_services.dart';
import '../../../../core/utils/logger.dart';
import '../models/chat_message_model.dart';

class ChatRemoteDataSource {
  final ApiServices _apiServices;
  final WebSocketServices _webSocketServices;

  ChatRemoteDataSource(this._apiServices, this._webSocketServices);

  String _socketId = '';
  ChatBroadcastTokenModel? _chatBroadcastTokenModel;

  Future<void> connectToChatSocket({
    required int senderId,
    required Function(String errorMessage) onFailure,
  }) async {
    final url = AppUrl.chatWebsocket;
    await _webSocketServices.connect(url);

    // Wait for the socket ID
    _socketId = await _getSocketId(onFailure);

    // Obtain chat broadcast token
    _chatBroadcastTokenModel = await getChatBroadcastToken(
      senderId: senderId,
      socketId: _socketId,
    );

    // Subscribe to the chat channel
    await _subscribeToChannel(senderId, onFailure);
  }

  Future<String> _getSocketId(
    Function(String errorMessage) onFailure,
  ) async {
    final Completer<String> socketIdCompleter = Completer<String>();
    logger.print(
      'Getting socket id',
      color: PrintColor.grey,
      title: PrintTitles.websocketServices,
    );
    _webSocketServices.addMessageListener(
      (message) {
        try {
          final event = jsonDecode(message);
          if (event[AppUrl.kEvent] == AppUrl.kPusherConnectionEstablished) {
            final data = SocketDataModel.fromJson(jsonDecode(event['data']));
            if (!socketIdCompleter.isCompleted) {
              socketIdCompleter.complete(data.socketId);
            }
          } else {
            if (!socketIdCompleter.isCompleted) {
              socketIdCompleter.completeError('Failed to obtain socket ID');
            }
          }
        } catch (e) {
          onFailure('Error while get socket id $e');
          rethrow;
        }
      },
    );

    return socketIdCompleter.future;
  }

  Future<void> _subscribeToChannel(
    int senderId,
    Function(String errorMessage) onFailure,
  ) async {
    final Completer<void> subsrciptionCompleter = Completer<void>();

    final subscriptionMessage = SubscriptionMessageModel(
      event: 'pusher:subscribe',
      data: SubscriptionDataModel(
        auth: _chatBroadcastTokenModel?.auth ?? '',
        channel: '${AppUrl.kPrivateChatTo}.$senderId',
      ),
    );
    logger.print(
      'Subscribing to channel with subscription $subscriptionMessage',
      color: PrintColor.grey,
      title: PrintTitles.websocketServices,
    );
    await _webSocketServices.sendMessage(jsonEncode(subscriptionMessage));

    // Wait for subscription confirmation
    _webSocketServices.addMessageListener(
      (message) {
        try {
          final event = jsonDecode(message);
          if (event[AppUrl.kEvent] ==
              AppUrl.kPusherInternalSubscriptionSucceeded) {
            if (!subsrciptionCompleter.isCompleted) {
              subsrciptionCompleter.complete();
            }
          } else if (event[AppUrl.kEvent] != null) {
            if (!subsrciptionCompleter.isCompleted) {
              subsrciptionCompleter.completeError('Subscription failed');
            }
          }
        } catch (e) {
          onFailure('Error while subscriping to channel $e');
        }
      },
    );

    return subsrciptionCompleter.future;
  }

  Future<ChatBroadcastTokenModel> getChatBroadcastToken({
    required int senderId,
    required String socketId,
  }) async {
    final body = {
      AppUrl.kChannelName: '${AppUrl.kPrivateChatTo}.$senderId',
      AppUrl.kSocketId: socketId,
    };

    final response = await _apiServices.post(
      AppUrl.chatBroadcastToken,
      body: body,
      hasToken: true,
    );

    return ChatBroadcastTokenModel.fromJson(response);
  }

  // Listen for messages from the WebSocket
  void listenToChatMessages({
    required Function(ChatMessageModel message) onSuccess,
    required Function(String errorMessage) onFailure,
  }) {
    _webSocketServices.addMessageListener(
      (message) {
        try {
          final event = jsonDecode(message);

          if (event[AppUrl.kEvent] == AppUrl.kEventMessageSent) {
            final data = jsonDecode(event[AppUrl.kData]);
            final messageModel =
                ChatMessageModel.fromJson(data[AppUrl.kMessage]);

            // If parsing and handling are successful, call onSuccess with the message data
            onSuccess(messageModel);
          } else {
            onFailure('Unexpected event type');
          }
        } catch (e) {
          // If there's an error, call onFailure with the exception
          onFailure('Error handling message: $e');
        }
      },
    );
  }

  Future<BaseModel> sendMessage({
    required int recieverId,
    required String message,
  }) async {
    final body = {
      AppUrl.kTo: '$recieverId',
      AppUrl.kMessage: message,
    };

    final response = await _apiServices.post(
      AppUrl.messages,
      body: body,
      hasToken: true,
    );

    return BaseModel.fromJson(
      response,
      (json) => () {},
    );
  }

  Future<BaseModel> getMessages({
    required int senderId,
  }) async {
    final response = await _apiServices.get(
      '${AppUrl.chats}/$senderId/${AppUrl.kMessages}',
      hasToken: true,
    );

    return BaseModel.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => ChatMessageModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

  // Send binary data (e.g., images, files) to the WebSocket
  Future<void> sendBinary(Uint8List data) async {
    await _webSocketServices.sendBinary(data);
  }

  // Disconnect from the WebSocket
  Future<void> disconnectFromChatSocket() async {
    await _webSocketServices.disconnect();
  }

  // Reconnect to the WebSocket (if needed)
  Future<void> reconnectToChatSocket() async {
    await _webSocketServices.reconnect();
  }

  // Check if the WebSocket is connected
  bool isConnected() {
    return _webSocketServices.isConnected();
  }

  // Handle errors and disconnections
  void handleErrorsAndDisconnections(
    Function(dynamic) onError,
    Function() onDone,
  ) {
    _webSocketServices.onError().listen(onError);
    _webSocketServices.onDone().listen((_) => onDone());
  }

  // Add a custom message listener
  void addMessageListener(Function(dynamic) onMessage) {
    _webSocketServices.addMessageListener(onMessage);
  }

  // Remove a custom message listener
  void removeMessageListener(Function(dynamic) onMessage) {
    _webSocketServices.removeMessageListener(onMessage);
  }
}
