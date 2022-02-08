// ignore_for_file: prefer_typing_uninitialized_variables, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_nooks_v0/pages/accueil.dart';
import 'package:site_nooks_v0/utilitaires/services/authentification_service.dart';

class FormulaireConnexion extends StatefulWidget {
  const FormulaireConnexion({Key? key}) : super(key: key);

  @override
  State<FormulaireConnexion> createState() => _FormulaireConnexionState();
}

class _FormulaireConnexionState extends State<FormulaireConnexion> {
  final AuthentificationService auth = AuthentificationService();
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String error = '';

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void toggleView() {
    setState(
      () {
        formKey.currentState!.reset();
        error = 'Identifiants incorrects';
        emailController.text = '';
        passwordController.text = '';
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 750.0,
      height: 250.0,
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              style: GoogleFonts.montserrat(
                fontSize: 20.0,
                color: Colors.black,
              ),
              decoration: const InputDecoration(
                prefix: Text("    "),
                hintText: "E-mail",
                hintStyle: TextStyle(
                  color: Colors.black26,
                ),
              ),
              controller: emailController,
            ),
            TextFormField(
              style: GoogleFonts.montserrat(
                fontSize: 20.0,
                color: Colors.black,
              ),
              decoration: const InputDecoration(
                prefix: Text("    "),
                hintText: "Mot de Passe",
                hintStyle: TextStyle(
                  color: Colors.black26,
                ),
              ),
              obscureText: true,
              controller: passwordController,
            ),
            Text(
              error,
              style: GoogleFonts.montserrat(fontSize: 15.0, color: Colors.red),
            ),
            TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
                overlayColor: MaterialStateProperty.all(Colors.teal[900]),
                backgroundColor: MaterialStateProperty.all(Colors.teal[800]),
                minimumSize: MaterialStateProperty.all(const Size(170.0, 50.0)),
              ),
              onPressed: () async {
                var password = passwordController.value.text;
                var email = emailController.value.text;
                dynamic result =
                    await auth.signInWithEmailAndPassword(email, password);
                if (result == null) {
                  toggleView();
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Accueil()),
                  );
                }
              },
              child: Text(
                "Connexion",
                style: GoogleFonts.montserrat(
                  fontSize: 15.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
