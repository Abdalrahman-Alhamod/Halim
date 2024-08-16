import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:halim/core/utils/logger.dart';
import 'package:rxdart/rxdart.dart';

class FirebaseUtil {
  static final messaging = FirebaseMessaging.instance;
  static final _messageStreamController = BehaviorSubject<RemoteMessage>();
  // ignore: unused_field
  static String _lastMessage = "";

  static Future<void> requestPermissions() async {
    final settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    logger.print(
      'Firebase Messaging Permission granted: ${settings.authorizationStatus}',
      color: PrintColor.grey,
      title: PrintTitles.firebaseUril,
    );
  }

  static Future<String?> getRegisterationToken() async {
    String? token = await messaging.getToken();
    logger.print(
      'Firebase Messaging Registration Token = $token',
      color: PrintColor.grey,
      title: PrintTitles.firebaseUril,
    );
    return token;
  }

  static Future<void> setupForgroundNotificationsHandler() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );
  }

  static void handleForgroundMessages() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      logger.print(
        '''
        Handling a foreground message: ${message.messageId}
        Message data: ${message.data}
        Message notification: ${message.notification?.title}
        Message notification: ${message.notification?.body}
        ''',
        color: PrintColor.grey,
        title: PrintTitles.firebaseUril,
      );

      _messageStreamController.sink.add(message);
    });
  }

  static void messagesListener() {
    _messageStreamController.listen((message) {
      //  setState(() {
      if (message.notification != null) {
        _lastMessage = 'Received a notification message:'
            '\nTitle=${message.notification?.title},'
            '\nBody=${message.notification?.body},'
            '\nData=${message.data}';
      } else {
        _lastMessage = 'Received a data message: ${message.data}';
      }
      //  });
    });
  }

  static Future<void> firebaseMessagingBackgroundHandler(
    RemoteMessage message,
  ) async {
    logger.print(
      '''
        Handling a background message: ${message.messageId}
        Message data: ${message.data}
        Message notification: ${message.notification?.title}
        Message notification: ${message.notification?.body}
        ''',
      color: PrintColor.grey,
      title: PrintTitles.firebaseUril,
    );
  }

  static Future<dynamic> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);
    } on Exception catch (e) {
      logger.print(
        'Error while sign in with google $e',
        color: PrintColor.red,
        title: PrintTitles.firebaseUril,
      );
    }
  }

  static Future<void> subscribeToTobic({required String topic}) async {
    await messaging.subscribeToTopic(topic);
  }
}
