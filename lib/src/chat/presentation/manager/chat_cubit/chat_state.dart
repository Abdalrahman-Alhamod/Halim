part of 'chat_cubit.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;

  const factory ChatState.fetchMessagesLoading() = _FetchMessagesLoading;
  const factory ChatState.fetchMessagesFailure(
      NetworkExceptions? networkException) = _FetchMessagesFailure;
  const factory ChatState.fetchMessagesSuccess(
      List<ChatMessageModel> messages) = _FetchMessagesSuccess;

  const factory ChatState.sendMessageLoading() = _SendMessageLoading;
  const factory ChatState.sendMessageFailure(
      NetworkExceptions? networkException) = _SendMessageFailure;
  const factory ChatState.sendMessageSuccess(ChatMessageModel message) =
      _SendMessageSuccess;

  const factory ChatState.connextToChatSocketFailure(String errorMessage) =
      _ConnextToChatSocketFailure;
  const factory ChatState.connextToChatSocketSuccess() =
      _ConnextToChatSocketSuccess;

       const factory ChatState.disconnectFromChatSocketFailure(String errorMessage) =
      _DisconnectFromChatSocketFailure;
  const factory ChatState.disconnectFromChatSocketSuccess() =
      _DisconnectFromChatSocketSuccess;

  const factory ChatState.messageReceivedFailure(String errorMessage) =
      _MessageReceivedFailure;
  const factory ChatState.messageReceivedSuccess(ChatMessageModel message) = _MessageReceivedSuccess;
}
