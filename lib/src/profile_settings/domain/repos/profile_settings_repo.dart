import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/api_response.dart';
import '../../../account_setup/data/models/student_infomations_model.dart';

abstract class ProfileSettingsRepo {
  Future<ApiResponse<BaseModel>> getTransactions();
  Future<ApiResponse<BaseModel>> getLeadrboards();
  Future<ApiResponse<BaseModel>> getReceipt();
  Future<ApiResponse<BaseModel>> updateInformationStudent(StudentInfomationsModel upStudent);
}
