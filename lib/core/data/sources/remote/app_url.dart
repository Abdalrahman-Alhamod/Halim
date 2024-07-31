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

  // Sort By keys
  static const kMostRelevent = "most-relevent";
  static const kMostPopular = "most-popular";
  static const kTopRated = "top-rated";
  static const kBestSelling = "best-selling";
  static const kLatest = "latest";
  static const kOldest = "oldest";
  static const kLowPrice = "low-price";
  static const kHighPrice = "high-price";

  // Filter keys
  static const kDuration = "duration";
  static const kLevels = "levels";
  static const kPrice = "price";
  static const kRatings = "ratings";
  static const all = "all";
  static const kBeginner = "Beginner";
  static const kIntermediate = "Intermediate";
  static const kAdvanced = "Advanced";
  static const kCategories = "categories";
  static const kSubcategories = "subcategories";

  static const sortBy = "sort-by";
  static const searchQuery = "search-query";

  static final searchKeywords = "${baseUrl}searchwords";

  ///<------------------------------------------------------------------------------

  static const include = "include";
  static const courseCardIncludes = "subcategory,enrollments-count,reviews-avg";
  static const mentorCardIncludes = "profile";
  static const courseMainSectionIncludes =
      "subcategory,enrollments-count,reviews-avg,reviews-count,level";
  static const courseAboutSectionIncludes = "mentor,keywords,profile";

  ///<------------------------------------------------------------------------------

  ///<------------------------------------------------------------------------------

  static final categories = "${baseUrl}categories";
  static final subcategories = "${baseUrl}subcategories";
  static final courses = "${baseUrl}courses";
  static final mentors = "${baseUrl}mentors";
}
