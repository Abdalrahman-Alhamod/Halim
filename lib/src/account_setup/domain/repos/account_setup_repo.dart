import 'package:halim/core/data/model/base_model.dart';
import 'package:halim/core/data/sources/remote/api_response.dart';
import 'package:halim/src/account_setup/data/models/student_infomations_model.dart';

abstract class AccountSetupRepo {
  Future<ApiResponse<BaseModel>> postInformationStudent(
      StudentInfomationsModel student);
}
