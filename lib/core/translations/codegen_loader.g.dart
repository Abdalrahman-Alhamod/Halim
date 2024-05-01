// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar = {
  "next": "التالي",
  "getStarted": "البدء",
  "intro1": "نحن نقدم أفضل الدورات التعليمية والموجهين العظماء",
  "intro2": "التعلم في أي وقت وفي أي مكان بسهولة ويسر",
  "intro3": "دعنا نحسن مهاراتك مع حليم الآن!",
  "startMessage": "لنسمح لك بالولوج",
  "continueWithGoogle": "سجل باستخدام Google",
  "continueWithFacebook": "سجل باستخدام Facebook",
  "continueWithApple": "سجل باستخدام Apple",
  "signInWithPassword": "تسجيل الدخول بكلمة المرور",
  "signUp": "أنشئ حسابًا",
  "dontHaveAnAccount": "لا تملك حسابًا؟",
  "or": "أو"
};
static const Map<String,dynamic> en = {
  "next": "Next",
  "getStarted": "Get Started",
  "intro1": "We provide the best learning courses & greate mentors",
  "intro2": "Learning anytime and anywhere easily and conveniently",
  "intro3": "Let's improve your skills together with Halim right now!",
  "startMessage": "Let's you in",
  "continueWithGoogle": "Continue with Google",
  "continueWithFacebook": "Continue with Facebook",
  "continueWithApple": "Continue with Apple",
  "signInWithPassword": "Sign in with password",
  "signUp": "Sign up",
  "dontHaveAnAccount": "Don't have an account?",
  "or": "or"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en};
}
