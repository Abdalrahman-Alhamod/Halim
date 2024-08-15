// ignore_for_file: unused_field

import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/sources/remote/api_response.dart';
import 'package:halim/src/chat/data/data_sources/chat_local_data_source.dart';
import 'package:halim/src/chat/data/data_sources/chat_remote_data_source.dart';
import 'package:halim/src/chat/data/models/chat_message_model.dart';
import 'package:halim/src/chat/domain/repos/chat_repo.dart';

import '../../../../core/domain/error_handler/network_exceptions.dart';

class ChatRepoImpl extends ChatRepo {
  final ChatLocalDataSource _chatLocalDataSource;
  final ChatRemoteDataSource _chatRemoteDataSource;

  ChatRepoImpl(this._chatLocalDataSource, this._chatRemoteDataSource);

  @override
  Future<ApiResponse<BaseModel>> sendMessage({
    required int recieverId,
    required String message,
  }) async {
    try {
      final response = await _chatRemoteDataSource.sendMessage(
          recieverId: recieverId, message: message);
      return ApiResponse.success(
        response,
      );
    } catch (error) {
      return ApiResponse.failure(
        NetworkExceptions.getException(
          error,
        ),
      );
    }
  }

  @override
  Future<ApiResponse<BaseModel>> getMessages({
    required int senderId,
  }) async {
    try {
      final response =
          await _chatRemoteDataSource.getMessages(senderId: senderId);
      return ApiResponse.success(
        response,
      );
    } catch (error) {
      return ApiResponse.failure(
        NetworkExceptions.getException(
          error,
        ),
      );
    }
  }

  @override
  void listenToChatMessages({
    required Function(ChatMessageModel message) onSuccess,
    required Function(String errorMessage) onFailure,
  }) {
    _chatRemoteDataSource.listenToChatMessages(
        onSuccess: onSuccess, onFailure: onFailure);
  }

  @override
  Future<void> connectToChatSocket({
    required int senderId,
    required Function() onSuccess,
    required Function(String errorMessage) onFailure,
  }) async {
    try {
      await _chatRemoteDataSource.connectToChatSocket(
        senderId: senderId,
        onFailure: onFailure,
      );
      onSuccess();
    } catch (e) {
      onFailure('Failed to connect to chat socket with error $e');
    }
  }

  @override
  Future<void> disconnectFromChatSocket({
    required Function() onSuccess,
    required Function(String errorMessage) onFailure,
  }) async {
    try {
      await _chatRemoteDataSource.disconnectFromChatSocket();
      onSuccess();
    } catch (e) {
      onFailure('Failed during disconnecting from chat socket with error $e');
    }
  }
}
