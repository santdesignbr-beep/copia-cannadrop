import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBk-5b8iR6HQSLcBwkvPSiM_XDQqyi770I",
            authDomain: "cannadrop-3e8ce.firebaseapp.com",
            projectId: "cannadrop-3e8ce",
            storageBucket: "cannadrop-3e8ce.appspot.com",
            messagingSenderId: "940240594866",
            appId: "1:940240594866:web:0852b896a9cad37654e6ab",
            measurementId: "G-RVH9CSQ2Y1"));
  } else {
    await Firebase.initializeApp();
  }
}
