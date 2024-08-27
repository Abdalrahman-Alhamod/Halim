import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract final class AppUrl {
  AppUrl._();

  static final baseServ = dotenv.env['API_URL'] ?? 'http://localhost:8000/';
  static final baseUrl = "${baseServ}v1/";
  static final storageUrl = "${baseServ}storage/";
  static const page = "page";

  ///<------------------------------------------------------------------------------

  static final baseWebsocket =
      dotenv.env['WebSocket_URL'] ?? 'ws://127.0.0.1:6001/';
  static const kEvent = "event";
  static const kPusherConnectionEstablished = 'pusher:connection_established';
  static const kPusherInternalSubscriptionSucceeded =
      'pusher_internal:subscription_succeeded';

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
  static final googleSignIn = "${auth}google/submit";

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
      "subcategory,enrollments-count,reviews-avg,reviews-count,level,lessons-count,sections-count,completed-lessons-count";
  static const courseAboutSectionIncludes = "mentor,keywords,profile";
  static const courseLessonsSectionIncludes = "lessons,lessons-count,duration";
  static const mentorDetailsIncludes = "enrollments-number,profile";
  static const ongoingCoursesIncludes = "lessons-count,completed-lessons-count";

  ///<------------------------------------------------------------------------------

  static const kReviews = "reviews";
  static const kUserReview = "userreview";
  static const kRating = "rate";
  static const kComment = "comment";

  ///<------------------------------------------------------------------------------

  static const kSections = "sections";
  static const kLessons = "lessons";
  // Quiz Keys
  static const kUntaken = "untaken";
  static const kPassed = "passed";
  static const kFailed = "failed";
  static const kMultipleChoice = "multiple choice";
  static const kCheckbox = "checkbox";
  static const kResult = "result";

  static const kSave = "save";
  static const kSaved = "saved";
  static const kUnsaved = "unsaved";

  static const kCourses = "courses";

  static const kAnnouncements = "announcements";

  static const kCertificate = "certificates";

  static const kCouponDetails = "discounts/details";
  static const kCode = "code";

  static const kEnroll = "enrollments";
  static const kPIN = "PIN";

  ///<------------------------------------------------------------------------------

  static final categories = "${baseUrl}categories";
  static final subcategories = "${baseUrl}subcategories";

  ///<------------------------------------------------------------------------------
  static final student = "${baseUrl}students";
  static final courses = "${baseUrl}courses";
  static final mentors = "${baseUrl}mentors";
  static final wallet = "${baseUrl}wallets";

  ///<------------------------------------------------------------------------------

  static final myCourses = "$courses/mycourses";
  static const kState = "state";
  static const kOngoing = "ongoing";
  static const kCompleted = "completed";

  ///<------------------------------------------------------------------------------

  static final chatWebsocket = "${baseWebsocket}app/local";
  static final chatBroadcastToken = '${auth}broadcasting/token';
  static const kChannelName = "channel_name";
  static const kPrivateChatTo = "private-chats-to";
  static const kSocketId = "socket_id";
  static const kEventMessageSent = "App\\Events\\MessageSent";
  static const kData = "data";
  static const kMessage = "message";
  static final messages = "${baseUrl}messages";
  static const kMessages = "messages";
  static const kTo = "to";
  static final chats = "${baseUrl}chats";

  ///<------------------------------------------------------------------------------

  static final achievementsBoard = "${baseUrl}achievemtsboard";
  static final achievementsSummery = "${baseUrl}summary";
  static final badges = "${baseUrl}badges";
  static const kType = "type";
  static const kContributions = "contributions";
  static const kFirstTime = "first_time";
  static const kHours = "hours";
  // static const kCourses = "courses";
  static final avatars = "${baseUrl}avatars";

  ///<------------------------------------------------------------------------------

  static final storeItems = "${baseUrl}storeItems";
  static const kFilter = "filter";
  static const kRelevant = "relevant";
  static const kPurshasable = "purshasable";
  static const kPointCost = "points_cost";
  // static const kType = "type";
  static const kItems = "items";
  static const kDiscounts = "discounts";
  static const kPurchase = "purchase";

  ///<------------------------------------------------------------------------------
  
   static const kPosts = "posts";
   static const kContent = "content";
   static const kReplyTo = "reply_to";

  ///<------------------------------------------------------------------------------

  ///<------------------------------------------------------------------------------
  static final transaction = "${baseUrl}transactions";

  ///<------------------------------------------------------------------------------
  static final advertisements = "${baseUrl}advertisements";
  ///<------------------------------------------------------------------------------
  static final receipt = "${baseUrl}enrollments/myenrollments";
  ///<------------------------------------------------------------------------------
  static final leaderboard = "${baseUrl}leaderboard";
}
