import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAnEoXeXVi-lvkDXkqzw3iOsKSZm6yiv8k",
            authDomain: "skydive-india-campaign-8q80h9.firebaseapp.com",
            projectId: "skydive-india-campaign-8q80h9",
            storageBucket: "skydive-india-campaign-8q80h9.appspot.com",
            messagingSenderId: "478941670132",
            appId: "1:478941670132:web:b15ab2eb9c74fa5b984ca1"));
  } else {
    await Firebase.initializeApp();
  }
}
