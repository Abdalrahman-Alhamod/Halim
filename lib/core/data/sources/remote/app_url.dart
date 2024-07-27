import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract final class AppUrl {
  AppUrl._();

  static final baseServ = dotenv.env['API_URL'] ?? 'http://localhost:8000/';
  static final baseUrl = "${baseServ}v1/";
  static final storageUrl = "${baseServ}storage/";

  ///<------------------------------------------------------------------------------

  static const testUrl = "https://reqres.in/api/users/2";
  static const testEmptyUrl = "https://reqres.in/api/users/23";

  ///<------------------------------------------------------------------------------

  static final auth = "${baseUrl}auth/";
  static final login = "${auth}login";
  static final logout = "${auth}logout";
  static final register = "${auth}register";

  static final password = "${auth}password/";
  static final sendCodeEmail = "${password}email";
  static final resetPassword = "${password}reset";

  static final googleRedirect = "${auth}google";
  static final googleCallback = "${auth}google/callback";

  ///<------------------------------------------------------------------------------

  static final searchKeywords = "${baseUrl}searchwords";

  ///<------------------------------------------------------------------------------
}
