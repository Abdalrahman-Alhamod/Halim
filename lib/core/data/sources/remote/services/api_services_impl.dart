import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import '../../../../functions/fake_delay.dart';
import '../../../../utils/logger.dart';
import 'package:http/http.dart' as http;

import '../../local/app_storage.dart';
import '../../local/app_storage_keys.dart';
import '../app_url.dart';
import 'api_services.dart';

class ApiServicesImpl implements ApiServices {
  final Dio _dio;
  late Map<String, dynamic> _headers;

  ApiServicesImpl(this._dio) {
    _dio.options
      ..baseUrl = AppUrl.baseUrl
      ..responseType = ResponseType.plain
      ..sendTimeout = const Duration(minutes: 1)
      ..receiveTimeout = const Duration(minutes: 1)
      ..connectTimeout = const Duration(minutes: 1)
      ..followRedirects = true;
    _dio.interceptors.add(dioLoggerInterceptor);
  }

  Future<void> setHeaders(bool hasToken) async {
    _headers = {
      "Accept": "application/json",
      "Accept-Timezone": DateTime.now().timeZoneName,
      "Authorization": hasToken
          ? "Bearer ${(AppStorage.instance.readData(AppStorageKeys.TOKEN))}"
          : null,
      "Accept-Language":
          AppStorage.instance.readData(AppStorageKeys.LANGUAGE_CODE) ?? 'en',
    };
  }

  @override
  Future<dynamic> delete(
    String path, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? body,
    bool? hasToken,
  }) async {
    try {
      await setHeaders(hasToken ?? true);
      final response = await _dio.delete(
        path,
        queryParameters: queryParams,
        data: body,
        options: Options(headers: _headers),
      );
      return _handleResponseAsJson(response);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<dynamic> get(
    String path, {
    Map<String, String>? queryParams,
    bool? hasToken,
  }) async {
    try {
      await setHeaders(hasToken ?? true);
      final response = await _dio.get(
        path,
        queryParameters: queryParams,
        options: Options(headers: _headers),
      );
      await fakeDelay();
      return _handleResponseAsJson(response);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<dynamic> post(
    String path, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? body,
    FormData? formData,
    bool? hasToken,
  }) async {
    try {
      await setHeaders(hasToken ?? true);

      final response = await _dio.post(
        path,
        queryParameters: queryParams,
        data: formData ?? body,
        options:
            Options(headers: _headers, contentType: Headers.jsonContentType),
      );
      await fakeDelay();
      return _handleResponseAsJson(response);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<dynamic> reqHttp(
    String path, {
    Map<String, dynamic>? queryParams,
    Map<String, String> body = const {},
    String typeRequest = "POST",
    String? key,
    List<http.MultipartFile> multipartFile = const [],
    bool? hasToken,
  }) async {
    try {
      await setHeaders(hasToken ?? true);
      var headers = {"Accept": "application/json"};
      if (hasToken ?? true) {
        String token =
            "Bearer ${(AppStorage.instance.readData(AppStorageKeys.TOKEN))}";
        headers['Authorization'] = token;
      }
      final mRequest = http.MultipartRequest(typeRequest, Uri.parse(path))
        ..files.addAll(multipartFile)
        ..fields.addAll(body)
        ..headers.addAll(headers);

      final response =
          await mRequest.send().timeout(const Duration(minutes: 1));
      return jsonDecode(await response.stream.transform(utf8.decoder).first);
    } catch (error) {
      //BlocProvider.of<UploadManagerCubit>(context).failureUploadFile(key:key);
      rethrow;
    }
  }

  @override
  Future<dynamic> postFiles(
    BuildContext context,
    String path, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? body,
    String? key,
    FormData? formData,
    bool? hasToken,
  }) async {
    try {
      await setHeaders(hasToken ?? true);

      final response = await _dio.post(
        path,
        queryParameters: queryParams,
        data: formData ?? body,
        options:
            Options(headers: _headers, contentType: Headers.jsonContentType),
        onSendProgress: (sent, total) {
          // if (total != -1) {
          //   var progress = (sent / total * 100).toStringAsFixed(0);
          //   BlocProvider.of<UploadManagerCubit>(context)
          //       .uploadFile(key: key, progress: progress);
          // }
        },
        onReceiveProgress: (sent, total) {
          // if (total != -1) {
          //   var progress = (sent / total * 100).toStringAsFixed(0);
          //   print('Download progress: $progress%');
          // }
        },
      );
      // BlocProvider.of<UploadManagerCubit>(context).completeUploadFile(key: key);
      return _handleResponseAsJson(response);
    } catch (error) {
      // BlocProvider.of<UploadManagerCubit>(context).failureUploadFile(key: key);
      rethrow;
    }
  }

  dynamic _handleResponseAsJson(Response<dynamic> response) {
    final responseAsJson = response.data.toString().isEmpty
        ? jsonDecode("{}")
        : jsonDecode(response.data.toString());
    return responseAsJson;
  }

  @override
  Future<dynamic> postList(
    String path, {
    Map<String, String>? queryParams,
    List<dynamic>? body,
    FormData? formData,
    bool? hasToken,
  }) async {
    try {
      setHeaders(hasToken ?? true);
      final response = await _dio.post(
        path,
        queryParameters: queryParams,
        data: formData ?? body,
        options:
            Options(headers: _headers, contentType: Headers.jsonContentType),
      );
      return _handleResponseAsJson(response);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<dynamic> put(
    String path, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? body,
    FormData? formData,
    bool? hasToken,
  }) async {
    try {
      await setHeaders(hasToken ?? true);

      final response = await _dio.put(
        path,
        queryParameters: queryParams,
        data: formData ?? body,
        options:
            Options(headers: _headers, contentType: Headers.jsonContentType),
      );
      return _handleResponseAsJson(response);
    } catch (error) {
      rethrow;
    }
  }

  final dioLoggerInterceptor = InterceptorsWrapper(
    // onRequest: (RequestOptions options, handler) {
    //   String headers = "";
    //   options.headers.forEach((key, value) {
    //     headers += "| $key: $value";
    //   });
    //   log("┌------------------------------------------------------------------------------");
    //   log('''| [DIO] Request: ${options.method} ${options.uri}
    //          | ${options.data.toString()}
    //          | Headers:\n$headers''');
    //   log("├------------------------------------------------------------------------------");
    //   handler.next(options); //continue
    // },
    // onResponse: (Response<dynamic> response, handler) async {
    //   log(response.data.toString());
    //   log("└------------------------------------------------------------------------------");
    //   handler.next(response);
    //   // return response; // continue
    // },
    // onError: (DioException error, handler) async {
    //   log("| [DIO] Error: ${error.error}: ${error.response.toString()}");
    //   log("└------------------------------------------------------------------------------");
    //   handler.next(error); //continue
    // },
    onRequest: (RequestOptions options, handler) {
      String headers = "";
      options.headers.forEach((key, value) {
        headers += "| $key: $value ";
      });
      logger.print(
        '[DIO] Request: ${options.method} ${options.uri}\nOptions ${options.data.toString()}\nHeaders:\n$headers',
        title: '${PrintTitles.dioInterceptors} Request',
      );
      handler.next(options); //continue
    },
    onResponse: (Response<dynamic> response, handler) {
      logger.print(
        response.data.toString().isEmpty
            ? jsonDecode("{}")
            : jsonDecode(response.data.toString()),
        title: '${PrintTitles.dioInterceptors} Response',
      );
      handler.next(response);
      // return response; // continue
    },
    onError: (DioException error, handler) async {
      logger.print(
        '[DIO] Error \nStatus code: ${error.response?.statusCode}\nError: ${error.error} \nResponse: ${error.response.toString()}',
        title: '${PrintTitles.dioInterceptors} Error',
      );
      handler.next(error); //continue
    },
  );
}
