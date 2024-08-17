// ignore_for_file: unused_field

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halim/src/chat/domain/repos/chat_repo.dart';
import 'package:halim/src/chat/presentation/views/widgets/messages_list_loading.dart';

import '../../../../../core/domain/error_handler/network_exceptions.dart';
import '../../../../../core/functions/show_toast.dart';
import '../../../../../core/functions/toast_status.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/logger.dart';
import '../../../data/models/chat_message_model.dart';

part 'chat_state.dart';
part 'chat_cubit.freezed.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit(this._chatRepo) : super(const ChatState.initial());
  final ChatRepo _chatRepo;

  int senderId = -1;

  Future<void> sendMessage({
    required int recieverId,
    required String message,
  }) async {
    emit(const ChatState.sendMessageLoading());
    final response = await _chatRepo.sendMessage(
      recieverId: recieverId,
      message: message,
    );
    response.when(
      success: (data) {
        emit(
          ChatState.sendMessageSuccess(
            ChatMessageModel(
              senderId: senderId,
              content: message,
              createdAt: DateTime.now(),
            ),
          ),
        );
      },
      failure: (networkException) {
        emit(
          ChatState.sendMessageFailure(networkException),
        );
      },
    );
  }

  bool listenSendMessageWhen(ChatState previous, ChatState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      sendMessageLoading: () => true,
      sendMessageSuccess: (_) => true,
      sendMessageFailure: (_) => true,
      orElse: () => false,
    );
  }

  listenSendMessage(BuildContext context, ChatState state) {
    const title = 'Chat Send Message';
    state.maybeWhen(
      sendMessageLoading: () {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      sendMessageFailure: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      sendMessageSuccess: (message) {
        logger.print(
          'Message sent successfully',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  List<ChatMessageModel>? messages;
  Future<void> getMessages() async {
    emit(
      const ChatState.fetchMessagesLoading(),
    );
    final response = await _chatRepo.getMessages(
      senderId: senderId,
    );
    response.when(
      success: (data) {
        messages = List<ChatMessageModel>.from(data.data.list);
        emit(
          ChatState.fetchMessagesSuccess(
            messages!,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          ChatState.fetchMessagesFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildFetchedMessagesWhen(ChatState previous, ChatState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchMessagesLoading: () => true,
      fetchMessagesFailure: (_) => true,
      fetchMessagesSuccess: (_) => true,
      orElse: () => false,
    );
  }

  Widget buildFetchedMessages({
    required BuildContext context,
    required ChatState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchMessagesLoading: () => const MessagesListLoading(),
      fetchMessagesSuccess: (_) => child,
      fetchMessagesFailure: (_) => const SizedBox(),
      orElse: () => child,
    );
  }

  bool listenFetchedMessagesWhen(ChatState previous, ChatState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchMessagesLoading: () => true,
      fetchMessagesFailure: (_) => true,
      fetchMessagesSuccess: (_) => true,
      orElse: () => false,
    );
  }

  listenFetchedMessages(BuildContext context, ChatState state) {
    const title = 'Chat Fetch Messages';
    state.maybeWhen(
      fetchMessagesLoading: () {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      fetchMessagesFailure: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      fetchMessagesSuccess: (
        List<ChatMessageModel> messages,
      ) {
        logger.print(
          '$title Success',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  Future<void> connectToChatWebsocket() async {
    await _chatRepo.connectToChatSocket(
      senderId: senderId,
      onSuccess: () {
        listenToChatMessages();
        emit(const ChatState.connextToChatSocketSuccess());
      },
      onFailure: (errorMessage) {
        emit(
          ChatState.connextToChatSocketFailure(errorMessage),
        );
      },
    );
  }

  bool listenConnectToChatSocketWhen(ChatState previous, ChatState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      connextToChatSocketFailure: (_) => true,
      connextToChatSocketSuccess: () => true,
      orElse: () => false,
    );
  }

  listenConnectToChatSocket(BuildContext context, ChatState state) {
    const title = 'Connect to Chat Websocket';
    state.maybeWhen(
      connextToChatSocketFailure: (String errorMessage) {
        showTOAST(
          context,
          textToast: errorMessage,
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          errorMessage,
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      connextToChatSocketSuccess: () {
        logger.print(
          'Connected to Chat Websocket successfully',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  void listenToChatMessages() {
    _chatRepo.listenToChatMessages(
      onSuccess: (message) {
        emit(ChatState.messageReceivedSuccess(message));
      },
      onFailure: (errorMessage) {
        emit(ChatState.messageReceivedFailure(errorMessage));
      },
    );
  }

  bool listenRecievedChatMessagesWhen(ChatState previous, ChatState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      messageReceivedFailure: (_) => true,
      messageReceivedSuccess: (_) => true,
      orElse: () => false,
    );
  }

  listenRecievedChatMessages(BuildContext context, ChatState state) {
    const title = 'Recieved Chat Message';
    state.maybeWhen(
      messageReceivedFailure: (String errorMessage) {
        showTOAST(
          context,
          textToast: errorMessage,
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          errorMessage,
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      messageReceivedSuccess: (ChatMessageModel message) {
        logger.print(
          'Message Recieved $message',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  Future<void> disconnectFromChatSocket() async {
    await _chatRepo.disconnectFromChatSocket(
      onSuccess: () {
        emit(
          const ChatState.disconnectFromChatSocketSuccess(),
        );
      },
      onFailure: (errorMessage) {
        emit(
          ChatState.disconnectFromChatSocketFailure(errorMessage),
        );
      },
    );
  }

  bool listenDisconnectFromChatSocketWhen(
      ChatState previous, ChatState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      disconnectFromChatSocketFailure: (_) => true,
      disconnectFromChatSocketSuccess: () => true,
      orElse: () => false,
    );
  }

  listenDisconnectFromChatSocket(BuildContext context, ChatState state) {
    const title = 'Disconnect from chat socket';
    state.maybeWhen(
      disconnectFromChatSocketFailure: (String errorMessage) {
        showTOAST(
          context,
          textToast: errorMessage,
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          errorMessage,
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      disconnectFromChatSocketSuccess: () {
        logger.print(
          'Disconnected from chat socket successfully',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }
}
