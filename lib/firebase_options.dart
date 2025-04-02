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
    apiKey: 'AIzaSyAMJRo_tbVt4eJxDcMjsnT_v3-TgsQUXLA',
    appId: '1:569799575983:web:395ea463ed90b1f6c8075a',
    messagingSenderId: '569799575983',
    projectId: 'myfirstimeusefirebase',
    authDomain: 'myfirstimeusefirebase.firebaseapp.com',
    storageBucket: 'myfirstimeusefirebase.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDDQnP10eW6F2UVXbAyf0bClfkdFlW65MQ',
    appId: '1:569799575983:android:7c209db993461b7dc8075a',
    messagingSenderId: '569799575983',
    projectId: 'myfirstimeusefirebase',
    storageBucket: 'myfirstimeusefirebase.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDMgoL2hpyZsGokHtB1iDDc_2zLoLPyVh0',
    appId: '1:569799575983:ios:1bb0cccf5013d562c8075a',
    messagingSenderId: '569799575983',
    projectId: 'myfirstimeusefirebase',
    storageBucket: 'myfirstimeusefirebase.firebasestorage.app',
    iosBundleId: 'com.example.flutterfireAuthappsFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDMgoL2hpyZsGokHtB1iDDc_2zLoLPyVh0',
    appId: '1:569799575983:ios:1bb0cccf5013d562c8075a',
    messagingSenderId: '569799575983',
    projectId: 'myfirstimeusefirebase',
    storageBucket: 'myfirstimeusefirebase.firebasestorage.app',
    iosBundleId: 'com.example.flutterfireAuthappsFirebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAMJRo_tbVt4eJxDcMjsnT_v3-TgsQUXLA',
    appId: '1:569799575983:web:f5921886b265122dc8075a',
    messagingSenderId: '569799575983',
    projectId: 'myfirstimeusefirebase',
    authDomain: 'myfirstimeusefirebase.firebaseapp.com',
    storageBucket: 'myfirstimeusefirebase.firebasestorage.app',
  );
}
