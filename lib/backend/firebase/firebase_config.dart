import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCxzNpSrxtVZu6myiTlynwmNp3Xa_qCCUs",
            authDomain: "ff-benchmark-staging.firebaseapp.com",
            projectId: "ff-benchmark-staging",
            storageBucket: "ff-benchmark-staging.firebasestorage.app",
            messagingSenderId: "776187583115",
            appId: "1:776187583115:web:c9a43a456799b960ce528e",
            measurementId: "G-7GDNND3L2K"));
  } else {
    await Firebase.initializeApp();
  }
}
