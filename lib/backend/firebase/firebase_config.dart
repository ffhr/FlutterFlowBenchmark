import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBkMFNtqirNIztmCivjHAlsQEYTHmVWHnU",
            authDomain: "ff-benchmark-development.firebaseapp.com",
            projectId: "ff-benchmark-development",
            storageBucket: "ff-benchmark-development.firebasestorage.app",
            messagingSenderId: "1015621602831",
            appId: "1:1015621602831:web:9ddda266e55787b199dd7a",
            measurementId: "G-1EW70Z49BT"));
  } else {
    await Firebase.initializeApp();
  }
}
