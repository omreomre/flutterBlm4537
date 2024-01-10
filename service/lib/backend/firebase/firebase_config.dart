import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCCjblOaDB-fhLNYbJ0icN-1SMj_gY3jQc",
            authDomain: "service-fafd1.firebaseapp.com",
            projectId: "service-fafd1",
            storageBucket: "service-fafd1.appspot.com",
            messagingSenderId: "445555055255",
            appId: "1:445555055255:web:7d91bd7df4d45b18d227d2"));
  } else {
    await Firebase.initializeApp();
  }
}
