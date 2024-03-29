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
    apiKey: 'AIzaSyC_NrJ6S9eLSnMJzwL8E1JTJiBQ9k3ih2A',
    appId: '1:588200815863:web:7b99397490f67bd4c137f2',
    messagingSenderId: '588200815863',
    projectId: 'swift-cart-3581d',
    authDomain: 'swift-cart-3581d.firebaseapp.com',
    storageBucket: 'swift-cart-3581d.appspot.com',
    measurementId: 'G-JLFEK8F5DW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCBaYHT03xYc3CYc2AORALyW87T6nQgr8w',
    appId: '1:588200815863:android:b3ffa725d9553097c137f2',
    messagingSenderId: '588200815863',
    projectId: 'swift-cart-3581d',
    storageBucket: 'swift-cart-3581d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBUIP8AIh_kX3YHZjPezs7nfSRHX-INaqY',
    appId: '1:588200815863:ios:4e3d81309f2c7b97c137f2',
    messagingSenderId: '588200815863',
    projectId: 'swift-cart-3581d',
    storageBucket: 'swift-cart-3581d.appspot.com',
    iosBundleId: 'com.codexia.swiftCart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBUIP8AIh_kX3YHZjPezs7nfSRHX-INaqY',
    appId: '1:588200815863:ios:b1cacef527db11d8c137f2',
    messagingSenderId: '588200815863',
    projectId: 'swift-cart-3581d',
    storageBucket: 'swift-cart-3581d.appspot.com',
    iosBundleId: 'com.codexia.swiftCart.RunnerTests',
  );
}
