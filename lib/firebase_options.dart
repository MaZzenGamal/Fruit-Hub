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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyDj0jVXLl8SA-mOeyzZierDInoFaB2mZ4k',
    appId: '1:6040686997:web:9dce3c5e79f4be8a95e69c',
    messagingSenderId: '6040686997',
    projectId: 'fruit-hub-1c004',
    authDomain: 'fruit-hub-1c004.firebaseapp.com',
    storageBucket: 'fruit-hub-1c004.appspot.com',
    measurementId: 'G-HJPVJTTW7T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDwdzjBjuPaDECEgrFLFWySrCWlnnXbm2M',
    appId: '1:6040686997:android:001fe41686543bad95e69c',
    messagingSenderId: '6040686997',
    projectId: 'fruit-hub-1c004',
    storageBucket: 'fruit-hub-1c004.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBzoLFRFzVn9BsbrZWZRhNwnQSYSLxGnLA',
    appId: '1:6040686997:ios:b36d3038e55f999795e69c',
    messagingSenderId: '6040686997',
    projectId: 'fruit-hub-1c004',
    storageBucket: 'fruit-hub-1c004.appspot.com',
    iosBundleId: 'com.example.fruitHub',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBzoLFRFzVn9BsbrZWZRhNwnQSYSLxGnLA',
    appId: '1:6040686997:ios:b36d3038e55f999795e69c',
    messagingSenderId: '6040686997',
    projectId: 'fruit-hub-1c004',
    storageBucket: 'fruit-hub-1c004.appspot.com',
    iosBundleId: 'com.example.fruitHub',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDj0jVXLl8SA-mOeyzZierDInoFaB2mZ4k',
    appId: '1:6040686997:web:3d00a3c56fabdb5e95e69c',
    messagingSenderId: '6040686997',
    projectId: 'fruit-hub-1c004',
    authDomain: 'fruit-hub-1c004.firebaseapp.com',
    storageBucket: 'fruit-hub-1c004.appspot.com',
    measurementId: 'G-B792QH20YK',
  );
}
