import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site_nooks_v0/pages/accueil.dart';
import 'package:site_nooks_v0/utilitaires/services/authentification_service.dart';
import 'package:site_nooks_v0/utilitaires/services/app_user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAM6L6ZMbeCBVjEDdOxuWT0z4vMaGjh7g8",
      appId: "1:802210212101:web:ce50919c41635d2938af6c",
      messagingSenderId: "802210212101",
      projectId: "nooks-c0816",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<AppUser?>.value(
      value: AuthentificationService().userdetect,
      initialData: null,
      child: const MaterialApp(
        home: Accueil(),
      ),
    );
  }
}
