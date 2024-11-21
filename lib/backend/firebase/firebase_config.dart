import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDoj7ZN3vcAiFwi7D2zPblkUbhIse2yE3E",
            authDomain: "ff-benchmark-production.firebaseapp.com",
            projectId: "ff-benchmark-production",
            storageBucket: "ff-benchmark-production.firebasestorage.app",
            messagingSenderId: "328882098159",
            appId: "1:328882098159:web:3446d4ed63a9989e3d701a",
            measurementId: "G-LY95XZPNNS"));
  } else {
    await Firebase.initializeApp();
  }
}
