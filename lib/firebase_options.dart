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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyCn2EFK_1aQeS5mfMA87cPv3ORypnTlZzE',
    appId: '1:852761072597:web:94a8adf7348475436f235c',
    messagingSenderId: '852761072597',
    projectId: 'testairos',
    authDomain: 'testairos.firebaseapp.com',
    storageBucket: 'testairos.appspot.com',
    measurementId: 'G-6GX3XM4L9Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCUnbuMK4U-WybgURfifDuZMoT9Ba6p2Kg',
    appId: '1:852761072597:android:809ffc793b0c11716f235c',
    messagingSenderId: '852761072597',
    projectId: 'testairos',
    storageBucket: 'testairos.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbGqn_QfvyHZPVuAfFzOZPvAepNlF81LA',
    appId: '1:852761072597:ios:7f1b7b29cd0410546f235c',
    messagingSenderId: '852761072597',
    projectId: 'testairos',
    storageBucket: 'testairos.appspot.com',
    iosBundleId: 'labsoft.airosmobile',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDbGqn_QfvyHZPVuAfFzOZPvAepNlF81LA',
    appId: '1:852761072597:ios:6b286c0735f276496f235c',
    messagingSenderId: '852761072597',
    projectId: 'testairos',
    storageBucket: 'testairos.appspot.com',
    iosBundleId: 'labsoft.airosmobile.RunnerTests',
  );
}
