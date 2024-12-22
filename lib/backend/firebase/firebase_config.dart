import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDoj7ZN3vcAiFwi7D2zPblkUbhIse2yE3E",
            authDomain: "ff-benchmark-production.firebaseapp.com",
            projectId: "ff-benchmark-production",
            storageBucket: "ff-benchmark-production.firebasestorage.app",
            messagingSenderId: "328882098159",
            appId: "1:328882098159:web:6b6582f87505b1023d701a",
            measurementId: "G-L5G6QE9MG0"));
  } else {
    await Firebase.initializeApp();
  }
}
