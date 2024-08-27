import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseUtil {
  static final supabase = Supabase.instance.client;
  static final _webClientId = dotenv.env['GOOGLE_WEB_CLIENT_ID'] ?? '';

  static final _iosClientId = dotenv.env['GOOGLE_IOS_CLIENT_ID'] ?? '';

  static final GoogleSignIn _googleSignIn = GoogleSignIn(
    clientId: _iosClientId,
    serverClientId: _webClientId,
  );

  static Future<AuthResponse> googleSignIn() async {
    final googleUser = await _googleSignIn.signIn();
    final googleAuth = await googleUser!.authentication;
    final accessToken = googleAuth.accessToken;
    final idToken = googleAuth.idToken;

    if (accessToken == null) {
      throw 'No Access Token found.';
    }
    if (idToken == null) {
      throw 'No ID Token found.';
    }

    return supabase.auth.signInWithIdToken(
      provider: OAuthProvider.google,
      idToken: idToken,
      accessToken: accessToken,
    );
  }

  static Future<void> signOut() async {
    await _googleSignIn.signOut();
    await supabase.auth.signOut();
  }
}
