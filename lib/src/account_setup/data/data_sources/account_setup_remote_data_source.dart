// ignore_for_file: prefer_final_fields

import 'package:dio/dio.dart';
import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import 'package:halim/core/data/sources/remote/services/api_services.dart';
import 'package:halim/src/account_setup/data/models/student_infomations_model.dart';

class AccountSetupRemoteDataSource {
  ApiServices _apiServices;
  AccountSetupRemoteDataSource(this._apiServices);
  Future<BaseModel> postInformationStudent(
      StudentInfomationsModel student) async {
    Map<String, dynamic> map = {
      'id': student.id ?? '',
      'first_name': student.firstName ?? '',
      'last_name': student.lastName ?? '',
      'education_evel': student.educationLevel ?? '',
      'phone_number': student.phoneNumber ?? '',
      'birth_date': student.birthDate ?? '',
      'PIN': student.pin ?? '',
      'gender': student.gender?.toLowerCase(),
      'email': student.email ?? ''
    };
    if (student.image != null) {
      final imageName = student.image.split('/').last;
      map.addEntries([
        MapEntry(
          'image',
          await MultipartFile.fromFile(student.image, filename: imageName),
        )
      ]);
    }

    FormData formData = FormData.fromMap(map);

    final response = await _apiServices.post(
      '${AppUrl.register}/${student.id ?? 0}',
      formData: formData,
      hasToken: false,
    );

    return BaseModel.fromJson(
      response,
      (json) => StudentInfomationsModel.fromJson(json),
    );
  }
}
