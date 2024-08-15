import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/sources/remote/api_response.dart';

import '../../data/models/chat_message_model.dart';

abstract class ChatRepo {
  Future<ApiResponse<BaseModel>> sendMessage({
    required int recieverId,
    required String message,
  });
  Future<ApiResponse<BaseModel>> getMessages({
    required int senderId,
  });
  void listenToChatMessages({
    required Function(ChatMessageModel message) onSuccess,
    required Function(String errorMessage) onFailure,
  });
  Future<void> connectToChatSocket({
    required int senderId,
    required Function() onSuccess,
    required Function(String errorMessage) onFailure,
  });
  Future<void> disconnectFromChatSocket({
    required Function() onSuccess,
    required Function(String errorMessage) onFailure,
  });
}
