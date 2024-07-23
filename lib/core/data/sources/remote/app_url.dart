import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract final class AppUrl {
  AppUrl._();

  static final baseServ = dotenv.env['API_URL'] ?? 'http://localhost:8080/';
  static final baseUrl = "${baseServ}api/";
  static final storageUrl = "${baseServ}storage/";

  ///<------------------------------------------------------------------------------

  static final login = "${baseUrl}login";
  static final register = "${baseUrl}register";
  static final logout = "${baseUrl}logout";
  static final getProfile = '${baseServ}api';
}
