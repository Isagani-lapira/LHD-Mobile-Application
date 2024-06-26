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
    apiKey: 'AIzaSyCL2Clp6i6YAH6FmuREjnwcIWXQCALF_B0',
    appId: '1:969703810604:web:9c955fd8f3d4ad63155389',
    messagingSenderId: '969703810604',
    projectId: 'lhd-project-c55a7',
    authDomain: 'lhd-project-c55a7.firebaseapp.com',
    storageBucket: 'lhd-project-c55a7.appspot.com',
    measurementId: 'G-VHV1Z35ETY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBd7tXTpqwr7jMYGjyPMsum7KN_AUhe4_E',
    appId: '1:969703810604:android:e27beb3c0d52986a155389',
    messagingSenderId: '969703810604',
    projectId: 'lhd-project-c55a7',
    storageBucket: 'lhd-project-c55a7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBm-aSANMecYVIDMkBfXKNRe8n8Mys3SKw',
    appId: '1:969703810604:ios:99a541ca510674d0155389',
    messagingSenderId: '969703810604',
    projectId: 'lhd-project-c55a7',
    storageBucket: 'lhd-project-c55a7.appspot.com',
    iosBundleId: 'com.example.lhdApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBm-aSANMecYVIDMkBfXKNRe8n8Mys3SKw',
    appId: '1:969703810604:ios:27dbdbba16ee5dc7155389',
    messagingSenderId: '969703810604',
    projectId: 'lhd-project-c55a7',
    storageBucket: 'lhd-project-c55a7.appspot.com',
    iosBundleId: 'com.example.lhdApp.RunnerTests',
  );
}
