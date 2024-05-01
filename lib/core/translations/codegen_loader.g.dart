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
  "Auth": {
    "email": "البريد الإلكتروني",
    "orContinueWith": "أو سجل باستخدام",
    "password": "كلمة المرور",
    "rememberMe": "تذكّرني",
    "signInWithPassword": "تسجيل الدخول بكلمة المرور",
    "or": "أو",
    "signUp": "إنشاء حساب",
    "continueWithApple": "سجل باستخدام Apple",
    "continueWithFacebook": "سجل باستخدام Facebook",
    "continueWithGoogle": "سجل باستخدام Google",
    "createYourAccount": "أنشئ حسابك",
    "dontHaveAnAccount": "لا تملك حسابًا؟",
    "startMessage": "لنسمح لك بالولوج"
  },
  "Intro": {
    "getStarted": "البدء",
    "intro1": "نحن نقدم أفضل الدورات التعليمية والموجهين العظماء",
    "intro2": "التعلم في أي وقت وفي أي مكان بسهولة ويسر",
    "intro3": "دعنا نحسن مهاراتك مع حليم الآن!"
  },
  "Buttons": {
    "next": "التالي"
  }
};
static const Map<String,dynamic> en = {
  "Auth": {
    "email": "Email",
    "orContinueWith": "or continue with",
    "password": "Password",
    "rememberMe": "Remember me",
    "signInWithPassword": "Sign in with password",
    "or": "or",
    "signUp": "Sign up",
    "continueWithApple": "Continue with Apple",
    "continueWithFacebook": "Continue with Facebook",
    "continueWithGoogle": "Continue with Google",
    "createYourAccount": "Create your Account",
    "dontHaveAnAccount": "Don't have an account?",
    "startMessage": "Let's you in"
  },
  "Intro": {
    "getStarted": "Get Started",
    "intro1": "We provide the best learning courses & greate mentors",
    "intro2": "Learning anytime and anywhere easily and conveniently",
    "intro3": "Let's improve your skills together with Halim right now!"
  },
  "Buttons": {
    "next": "Next"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en};
}
