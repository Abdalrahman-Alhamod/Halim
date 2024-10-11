import '../../../../core/data/model/base_model.dart';
import '../../../../core/data/sources/remote/api_response.dart';
import '../../data/models/student_infomations_model.dart';

abstract class AccountSetupRepo {
  Future<ApiResponse<BaseModel>> postInformationStudent(
      StudentInfomationsModel student);
}
