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
    apiKey: 'AIzaSyCY8ExAZZIXvS_8KZsZPQC6ekIeA90NXrs',
    appId: '1:118350703238:web:a486c53d8260f82413ff07',
    messagingSenderId: '118350703238',
    projectId: 'nomnom-7ef89',
    authDomain: 'nomnom-7ef89.firebaseapp.com',
    storageBucket: 'nomnom-7ef89.appspot.com',
    measurementId: 'G-QNNN21P3VZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA3UY79dqa7LScQ5Oi_oZQ5rInKxJEBL2Y',
    appId: '1:118350703238:android:c8f0c2f3c6eb88fe13ff07',
    messagingSenderId: '118350703238',
    projectId: 'nomnom-7ef89',
    storageBucket: 'nomnom-7ef89.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC43M_Btu3KUvVEmf6wyEECTL9YpbCd_xo',
    appId: '1:118350703238:ios:29f3f811a61fcc6f13ff07',
    messagingSenderId: '118350703238',
    projectId: 'nomnom-7ef89',
    storageBucket: 'nomnom-7ef89.appspot.com',
    iosBundleId: 'com.example.nomnom',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC43M_Btu3KUvVEmf6wyEECTL9YpbCd_xo',
    appId: '1:118350703238:ios:4dfada18099b9a9e13ff07',
    messagingSenderId: '118350703238',
    projectId: 'nomnom-7ef89',
    storageBucket: 'nomnom-7ef89.appspot.com',
    iosBundleId: 'com.example.nomnom.RunnerTests',
  );
}
