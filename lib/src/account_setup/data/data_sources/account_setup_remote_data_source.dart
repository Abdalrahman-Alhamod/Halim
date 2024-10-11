import 'dart:convert';
import 'package:dio/dio.dart';
import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/app_url.dart';
import '../../../../core/data/sources/remote/services/api_services.dart';
import '../../../../core/utils/logger.dart';
import '../models/student_infomations_model.dart';

class AccountSetupRemoteDataSource {
  final ApiServices _apiServices;
  AccountSetupRemoteDataSource(this._apiServices);
  Future<BaseModel> postInformationStudent(
      StudentInfomationsModel student) async {
    Map<String, dynamic> map = {
      'id': student.id ?? '',
      'first_name': student.firstName ?? '',
      'last_name': student.lastName ?? '',
      'education_level': student.educationLevel ?? '',
      'phone_number': student.phoneNumber ?? '',
      'birth_date': student.birthDate ?? '',
      'PIN': student.pin ?? '',
      'gender': student.gender?.toLowerCase(),
      'email': student.email ?? '',
      'interests': jsonEncode(
          student.interests?.map((interest) => interest.id).toList()),
    };
    if (student.major?.name?.isNotEmpty ?? false) {
      map.addEntries(
        [
          MapEntry(
            'major',
            student.major?.name ?? '',
          )
        ],
      );
    }
    if (student.image != null) {
      final imageName = student.image?.split('/').last;
      map.addEntries([
        MapEntry(
          'image',
          await MultipartFile.fromFile(student.image ?? '',
              filename: imageName),
        )
      ]);
    }

    FormData formData = FormData.fromMap(map);
    logger.e(map);
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
