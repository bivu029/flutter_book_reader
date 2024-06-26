// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBmMOx6x4ASWMFHw1Do6Xm2co7JFSZwWDk',
    appId: '1:679023608384:web:eea5330f6ef829058d55a5',
    messagingSenderId: '679023608384',
    projectId: 'bazarbook-db8a0',
    authDomain: 'bazarbook-db8a0.firebaseapp.com',
    storageBucket: 'bazarbook-db8a0.appspot.com',
    measurementId: 'G-4M46WE13NM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZR9sJiTRGmPfsjKs_fk-ZbpxvBZYc8PY',
    appId: '1:679023608384:android:84addcf28a21a8d38d55a5',
    messagingSenderId: '679023608384',
    projectId: 'bazarbook-db8a0',
    storageBucket: 'bazarbook-db8a0.appspot.com',
  );
}
