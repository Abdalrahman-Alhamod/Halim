import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract final class AppUrl {
  AppUrl._();

  static final baseServ = dotenv.env['API_URL'] ?? 'http://localhost:8000/';
  static final baseUrl = "${baseServ}v1/";
  static final storageUrl = "${baseServ}storage/";
  static const page = "page";

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

  static const all = "all";
  static const beginner = "Beginner";
  static const intermediate = "Intermediate";
  static const advanced = "Advanced";
  static const kCategories = "categories";
  static const kSubcategories = "subcategories";

  // Filters keys
  static const kMostRelevent = "most-relevent";
  static const kMostPopular = "most-popular";
  static const kTopRated = "top-rated";
  static const kBestSelling = "best-selling";
  static const kLatest = "latest";
  static const kOldest = "oldest";
  static const kLowPrice = "low-price";
  static const kHighPrice = "high-price";

  static const duration = "duration";
  static const levels = "levels";
  static const price = "price";
  static const ratings = "ratings";
  static const sortBy = "sort-by";
  static const searchQuery = "search-query";
  static final searchKeywords = "${baseUrl}searchwords";
  static final searchCourses = "${baseUrl}courses";
  static final searchMentors = "${baseUrl}mentors";

  ///<------------------------------------------------------------------------------

  static const include = "include";
  static const courseCardIncludes =
      "subcategory,enrollments-count,reviews-avg,universalDiscount";
  static const mentorCardIncludes = "";

  ///<------------------------------------------------------------------------------

  static final categories = "${baseUrl}categories";
  static final subcategories = "${baseUrl}subcategories";
}
