import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDxh43Z4r3x97aujoLvZT2tQi1093zLaHI",
            authDomain: "a-r-p-project-8oywk5.firebaseapp.com",
            projectId: "a-r-p-project-8oywk5",
            storageBucket: "a-r-p-project-8oywk5.firebasestorage.app",
            messagingSenderId: "199655128264",
            appId: "1:199655128264:web:9ac9bbc354168f9efbf9fd",
            measurementId: "G-43HMTHRRKK"));
  } else {
    await Firebase.initializeApp();
  }
}
