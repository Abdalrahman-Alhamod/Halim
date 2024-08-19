// ignore_for_file: unused_field

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/model/base_models.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import 'package:halim/core/data/sources/remote/services/api_services.dart';
import 'package:halim/core/functions/fake_delay.dart';
import 'package:halim/core/helpers/date_time_helper.dart';
import 'package:halim/src/account_setup/data/models/student_infomations_model.dart';
import 'package:halim/src/profile_settings/data/models/receipt_model.dart';
import 'package:halim/src/profile_settings/data/models/transaction_model.dart';

import '../../../../core/utils/logger.dart';
import '../models/student_leaderboards_model.dart';

class ProfileSettingsRemoteDataSource {
  final ApiServices _apiServices;
  ProfileSettingsRemoteDataSource(this._apiServices);

  Future<BaseModel> getTransactions() async {
    final response = await _apiServices.get(
      AppUrl.transaction,
      hasToken: true,
    );
    await fakeDelay();
    return BaseModel<BaseModels>.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => TransactionModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

  Future<BaseModel> getReceipt() async {
    final response = await _apiServices.get(
      AppUrl.receipt,
      hasToken: true,
    );
    await fakeDelay();
    return BaseModel<BaseModels>.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => ReceiptModel.fromJson(
          itemJson,
        ),
      ),
    );
  }

  Future<BaseModel> getLeadrboards() async {
    final response = await _apiServices.get(
      AppUrl.leaderboard,
      hasToken: true,
    );
    return BaseModel<BaseModels>.fromJson(
      response,
      (json) => BaseModels.fromJson(
        json,
        (itemJson) => StudentLeaderboards.fromJson(
          itemJson,
        ),
      ),
    );
  }

  Future<BaseModel> updateStudentInformation(
      StudentInfomationsModel student) async {
    Map<String, dynamic> map = {
      if (student.firstName != null) 'first_name': student.firstName,
      if (student.lastName != null) 'last_name': student.lastName,
      if (student.educationLevel != null)
        'education_level': student.educationLevel,
      if (student.phoneNumber != null) 'phone_number': student.phoneNumber,
      if (student.birthDate != null)
        'birth_date': DateTimeHelper.format(
          DateTime.parse(student.birthDate ?? ''),
          DateTimeFormat.onlyDate,
        ),
      if (student.pin != null) 'PIN': student.pin,
      if (student.gender != null) 'gender': student.gender?.toLowerCase(),
      if (student.email != null) 'email': student.email,
      if (student.interests != null)
        'interests': jsonEncode(
            student.interests?.map((interest) => interest.id).toList()),
    };

    if (student.major?.name?.isNotEmpty ?? false) {
      map['major'] = student.major?.name;
    }

    if (student.image != null) {
      final imageName = student.image?.split('/').last;
      map['image'] = await MultipartFile.fromFile(student.image ?? '',
          filename: imageName);
    }
    FormData formData = FormData.fromMap(map);
    logger.e(map);
    final response = await _apiServices.post(
      '${AppUrl.student}/${student.id ?? 0}',
      formData: formData,
      hasToken: true,
    );

    return BaseModel.fromJson(
      response,
      (json) => StudentInfomationsModel.fromJson(json),
    );
  }
}
