import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB_h3f-BkCMhE8H0xP89FLyNf5ssi72PGk",
            authDomain: "extremetechapp.firebaseapp.com",
            projectId: "extremetechapp",
            storageBucket: "extremetechapp.appspot.com",
            messagingSenderId: "733181429594",
            appId: "1:733181429594:web:890c4e5a15eca3cb881563",
            measurementId: "G-PJLYK8ZM0Y"));
  } else {
    await Firebase.initializeApp();
  }
}
