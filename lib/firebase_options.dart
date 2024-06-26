// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyDI4-ttNiv8BIeo2JzacvXJrAvE6vAVyIk',
    appId: '1:907704454149:web:ef7c30a1bd83c8e45e206c',
    messagingSenderId: '907704454149',
    projectId: 'prototype1-f511d',
    authDomain: 'prototype1-f511d.firebaseapp.com',
    storageBucket: 'prototype1-f511d.appspot.com',
    measurementId: 'G-1ZHGPLB9D4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCYcp4EB2v1-SScjjT0hR9LbtSh84RnhBA',
    appId: '1:907704454149:android:a8fbfb412d3b05285e206c',
    messagingSenderId: '907704454149',
    projectId: 'prototype1-f511d',
    storageBucket: 'prototype1-f511d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyANdHBt9XbZUKXO6TTJmlW21ufAyfsbrl0',
    appId: '1:907704454149:ios:bba67196d7f6c5a35e206c',
    messagingSenderId: '907704454149',
    projectId: 'prototype1-f511d',
    storageBucket: 'prototype1-f511d.appspot.com',
    iosBundleId: 'com.example.prototype1',
  );
}
