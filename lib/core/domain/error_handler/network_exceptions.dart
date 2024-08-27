import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../translations/locale_keys.g.dart';
import '../entities/error_entity.dart';
part 'network_exceptions.freezed.dart';

@freezed
abstract class NetworkExceptions with _$NetworkExceptions implements Exception {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;


  const factory NetworkExceptions.firebaseAuthException(String message) =
      FireBaseAuthException;

  const factory NetworkExceptions.firebaseException(String message) =
      FireBaseException;

  const factory NetworkExceptions.unauthorizedRequest(String reason) =
      UnauthorizedRequest;
  const factory NetworkExceptions.loggingInRequired() = LoggingInRequired;

  const factory NetworkExceptions.badRequest() = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.unprocessableEntity(String reason) =
      UnprocessableEntity;

  const factory NetworkExceptions.conflict() = Conflict;

  const factory NetworkExceptions.internalServerError() = InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  static List<NetworkExceptions> getAllNetworkExceptions() {
    return [
      const NetworkExceptions.badRequest(),
      const NetworkExceptions.unauthorizedRequest(''),
      const NetworkExceptions.conflict(),
      const NetworkExceptions.defaultError(''),
      const NetworkExceptions.formatException(),
      const NetworkExceptions.internalServerError(),
      const NetworkExceptions.loggingInRequired(),
      const NetworkExceptions.methodNotAllowed(),
      const NetworkExceptions.noInternetConnection(),
      const NetworkExceptions.notFound(''),
      const NetworkExceptions.notAcceptable(),
      const NetworkExceptions.notImplemented(),
      const NetworkExceptions.requestCancelled(),
      const NetworkExceptions.unprocessableEntity(''),
      const NetworkExceptions.unexpectedError(),
      const NetworkExceptions.unableToProcess(),
      const NetworkExceptions.serviceUnavailable(),
      const NetworkExceptions.sendTimeout(),
    ];
  }

  static NetworkExceptions handleResponse(Response<dynamic>? response) {
    ErrorEntity errorModel = ErrorEntity.fromJson(
      jsonDecode(response?.data),
    );

    int statusCode = response?.statusCode ?? 0;

    switch (statusCode) {
      case 400:
      case 401:
        return NetworkExceptions.unauthorizedRequest("${errorModel.message}");
      case 403:
        return const NetworkExceptions.loggingInRequired();
      case 404:
        return NetworkExceptions.notFound("${errorModel.message}");
      case 405:
        return const NetworkExceptions.methodNotAllowed();
      case 409:
        return const NetworkExceptions.conflict();
      case 408:
        return const NetworkExceptions.requestTimeout();
      case 422:
        return NetworkExceptions.unprocessableEntity("${errorModel.message}");
      case 500:
        return const NetworkExceptions.internalServerError();
      case 503:
        return const NetworkExceptions.serviceUnavailable();
      default:
        var responseCode = statusCode;
        return NetworkExceptions.defaultError(
          "Received invalid status code: $responseCode",
        );
    }
  }

  static NetworkExceptions getException(error) {
    // logger.e(error);
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioException) {
          // logger.e(error.type);
          // logger.e(error.message);
          // logger.e(error.response);
          switch (error.type) {
            case DioExceptionType.cancel:
              networkExceptions = const NetworkExceptions.requestCancelled();
              break;
            case DioExceptionType.connectionTimeout:
              networkExceptions = const NetworkExceptions.requestTimeout();
              break;
            case DioExceptionType.unknown:
              networkExceptions =
                  const NetworkExceptions.noInternetConnection();
              break;
            case DioExceptionType.receiveTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioExceptionType.badResponse:
              networkExceptions =
                  NetworkExceptions.handleResponse(error.response);
              break;

            case DioExceptionType.sendTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioExceptionType.connectionError:
              networkExceptions =
                  const NetworkExceptions.noInternetConnection();
              break;
            case DioExceptionType.badCertificate:
              networkExceptions = const NetworkExceptions.methodNotAllowed();
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = const NetworkExceptions.noInternetConnection();
        } else if (error is FirebaseAuthException) {
          networkExceptions =
              NetworkExceptions.firebaseAuthException(error.message!);
        } else if (error is FirebaseException) {
          networkExceptions =
              NetworkExceptions.firebaseException(error.message!);
        } else {
          networkExceptions = const NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException {
        return const NetworkExceptions.formatException();
      } catch (_) {
        return const NetworkExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return const NetworkExceptions.unableToProcess();
      } else {
        return const NetworkExceptions.unexpectedError();
      }
    }
  }

  static String getErrorMessage(NetworkExceptions? networkExceptions) {
    //  return getErrorMessageTrTr(networkExceptions);
    var errorMessage = "";
    networkExceptions?.whenOrNull(
          notImplemented: () {
            errorMessage = "Not Implemented";
          },
          requestCancelled: () {
            errorMessage = "Request Cancelled";
          },
          loggingInRequired: () {
            errorMessage = "Log in First";
          },
          internalServerError: () {
            errorMessage = "Internal Server Error";
          },
          notFound: (String reason) {
            errorMessage = reason;
          },
          serviceUnavailable: () {
            errorMessage = "Service unavailable";
          },
          methodNotAllowed: () {
            errorMessage = "Method Not Allowed";
          },
          badRequest: () {
            errorMessage = "Bad request";
          },
          unauthorizedRequest: (String error) {
            errorMessage = error;
          },
          unprocessableEntity: (String error) {
            errorMessage = error;
          },
          unexpectedError: () {
            errorMessage = "Unexpected error occurred";
          },
          requestTimeout: () {
            errorMessage = "Connection request timeout";
          },
          noInternetConnection: () {
            errorMessage = "No internet connection";
          },
          conflict: () {
            errorMessage = "Error due to a conflict";
          },
          sendTimeout: () {
            errorMessage = "Send timeout in connection with API server";
          },
          unableToProcess: () {
            errorMessage = "Unable to process the data";
          },
          defaultError: (String error) {
            errorMessage = error;
          },
          formatException: () {
            errorMessage = "Unexpected error occurred";
          },
          notAcceptable: () {
            errorMessage = "Not acceptable";
          },
          firebaseAuthException: (String message) {
            errorMessage = message;
          },
          firebaseException: (String message) {
            errorMessage = message;
          },
        ) ??
        '';
    return errorMessage;
  }

  static String getErrorMessageTr(NetworkExceptions? networkExceptions) {
    var errorMessage = "";
    if (networkExceptions != null) {
      networkExceptions.when(
        notImplemented: () {
          errorMessage = tr(LocaleKeys.Errors_notImplemented);
        },
        requestCancelled: () {
          errorMessage = tr(LocaleKeys.Errors_requestCancelled);
        },
        loggingInRequired: () {
          errorMessage = tr(LocaleKeys.Errors_loggingInRequired);
        },
        internalServerError: () {
          errorMessage = tr(LocaleKeys.Errors_internalServerError);
        },
        notFound: (String reason) {
          errorMessage = reason;
          if (reason.toLowerCase().contains("not found")) {
            errorMessage = tr(LocaleKeys.Errors_notFound);
          }
        },
        serviceUnavailable: () {
          errorMessage =
              errorMessage = tr(LocaleKeys.Errors_serviceUnavailable);
        },
        methodNotAllowed: () {
          errorMessage = errorMessage = tr(LocaleKeys.Errors_methodNotAllowed);
        },
        badRequest: () {
          errorMessage = errorMessage = tr(LocaleKeys.Errors_badRequest);
        },
        unauthorizedRequest: (String error) {
          errorMessage = error;
          if (error.toLowerCase().contains("unauthorized request")) {
            errorMessage = tr(LocaleKeys.Errors_unauthorizedRequest);
          }
        },
        unprocessableEntity: (String error) {
          errorMessage = error;
          if (error.toLowerCase().contains("unprocessable entity")) {
            errorMessage = tr(LocaleKeys.Errors_unprocessableEntity);
          }
        },
        unexpectedError: () {
          errorMessage = errorMessage = tr(LocaleKeys.Errors_unexpectedError);
        },
        requestTimeout: () {
          errorMessage = errorMessage = tr(LocaleKeys.Errors_requestTimeout);
        },
        noInternetConnection: () {
          errorMessage = tr(LocaleKeys.Errors_noInternetConnection);
        },
        conflict: () {
          errorMessage = errorMessage = tr(LocaleKeys.Errors_conflict);
        },
        sendTimeout: () {
          errorMessage = errorMessage = tr(LocaleKeys.Errors_sendTimeout);
        },
        unableToProcess: () {
          errorMessage = errorMessage = tr(LocaleKeys.Errors_unableToProcess);
        },
        defaultError: (String error) {
          errorMessage = error;
          if (error.toLowerCase().contains("default error")) {
            errorMessage = tr(LocaleKeys.Errors_defaultError);
          }
        },
        formatException: () {
          errorMessage = errorMessage = tr(LocaleKeys.Errors_formatException);
        },
        notAcceptable: () {
          errorMessage = errorMessage = tr(LocaleKeys.Errors_notAcceptable);
        },
        firebaseAuthException: (String message) {
          errorMessage = message;
        },
        firebaseException: (String message) {
          errorMessage = message;
        },
      );
      return errorMessage;
    } else {
      return 'Unknown error';
    }
  }
}
