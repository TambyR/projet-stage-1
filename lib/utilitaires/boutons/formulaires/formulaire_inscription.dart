// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_nooks_v0/pages/accueil.dart';
import 'package:site_nooks_v0/utilitaires/services/authentification_service.dart';

class FormulaireInscription extends StatefulWidget {
  const FormulaireInscription({Key? key}) : super(key: key);

  @override
  State<FormulaireInscription> createState() => _FormulaireInscriptionState();
}

class _FormulaireInscriptionState extends State<FormulaireInscription> {
  final AuthentificationService auth = AuthentificationService();

  final formKey = GlobalKey<FormState>();
  final nomController = TextEditingController();
  final prenomController = TextEditingController();
  final pseudoController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordVerif = TextEditingController();

  String error = '';

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    passwordVerif.dispose();
    super.dispose();
  }

  void toggleView() {
    setState(
      () {
        formKey.currentState!.reset();
        passwordController.text = '';
        passwordVerif.text = '';
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 750.0,
      height: 600.0,
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
                hintText: "Nom",
                hintStyle: TextStyle(
                  color: Colors.black26,
                ),
              ),
              controller: nomController,
            ),
            TextFormField(
              style: GoogleFonts.montserrat(
                fontSize: 20.0,
                color: Colors.black,
              ),
              decoration: const InputDecoration(
                prefix: Text("    "),
                hintText: "Prénom",
                hintStyle: TextStyle(
                  color: Colors.black26,
                ),
              ),
              controller: prenomController,
            ),
            TextFormField(
              style: GoogleFonts.montserrat(
                fontSize: 20.0,
                color: Colors.black,
              ),
              decoration: const InputDecoration(
                prefix: Text("    "),
                hintText: "Pseudo",
                hintStyle: TextStyle(
                  color: Colors.black26,
                ),
              ),
              controller: pseudoController,
            ),
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
            TextFormField(
              style: GoogleFonts.montserrat(
                fontSize: 20.0,
                color: Colors.black,
              ),
              decoration: const InputDecoration(
                prefix: Text("    "),
                hintText: "Confirmez mot de passe",
                hintStyle: TextStyle(
                  color: Colors.black26,
                ),
              ),
              obscureText: true,
              controller: passwordVerif,
            ),
            Text(
              error,
              style: GoogleFonts.montserrat(fontSize: 15.0, color: Colors.red),
            ),
            TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
                overlayColor: MaterialStateProperty.all(Colors.green[900]),
                backgroundColor: MaterialStateProperty.all(Colors.green[800]),
                minimumSize: MaterialStateProperty.all(const Size(170.0, 50.0)),
              ),
              onPressed: () async {
                if (formKey.currentState?.validate() == true) {
                  var password = passwordController.value.text;
                  var email = emailController.value.text;

                  dynamic result = await auth.registerWithEmailAndPassword(
                      password,
                      email,
                      prenomController.value.text,
                      nomController.value.text,
                      pseudoController.value.text);

                  if (passwordController.value.text !=
                      passwordVerif.value.text) {
                    error = "Confirmez à nouveau votre mot de passe";
                    toggleView();
                    print(error);
                  } else if (password.length < 6) {
                    error =
                        """Format du mot de passe incorrect, entrez un mot de passe avec au moins 6 caractères""";
                    toggleView();
                    print(error);
                  } else if (result == null) {
                    error = "Adresse e-mail déjà existante";
                    toggleView();
                    print(error);
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Accueil()),
                    );
                  }
                }
              },
              child: Text(
                "Inscription",
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
