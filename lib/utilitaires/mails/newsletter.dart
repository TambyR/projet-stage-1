// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, avoid_print

/*text_form_field.dart version 0.4 ----> Ajout du widget InscriptionNewletter + responsive
Contient quatre Widgets servant à décorer les champs de textes pour l'inscription à la NewsLetter
  -ChampMail, à l'intérieur de BlocChampMail, un TextFormField
  -BlocChampMail, un Container qui s'occupe de la forme et de la couleur
  -BoutonTransparent qui contient la décoration d'un bouton transparent (TextButton)
  -InscriptionNewletter qui combine les trois Widgets précédents en un seul Container (dans une Row)
*/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_nooks_v0/utilitaires/boutons/button_style.dart';
import 'package:site_nooks_v0/utilitaires/mails/email_verificator.dart';
import 'package:site_nooks_v0/utilitaires/mails/send_email.dart';
import 'package:site_nooks_v0/utilitaires/services/database_service.dart';

class InscriptionNewletter extends StatefulWidget {
  const InscriptionNewletter({Key? key}) : super(key: key);

  @override
  State<InscriptionNewletter> createState() => _InscriptionNewletterState();
}

class _InscriptionNewletterState extends State<InscriptionNewletter> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 475.0,
        padding: EdgeInsets.zero,
        color: Colors.transparent,
        child: const BlocChampMail());
  }
}

class BlocChampMail extends StatefulWidget {
  const BlocChampMail({Key? key}) : super(key: key);

  @override
  State<BlocChampMail> createState() => _BlocChampMailState();
}

class _BlocChampMailState extends State<BlocChampMail> {
  final database = DatabaseService(prospectID: '');
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  String error = '';

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  void toggleView() {
    setState(
      () {
        formKey.currentState!.reset();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    dynamic screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Alignement(
          colonne: screenWidth > 550 ? false : true,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              width: 230.0,
              height: 43.5,
              padding: EdgeInsets.zero,
              child: Center(
                child: TextFormField(
                  controller: emailController,
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
                ),
              ),
            ),
            TextButton(
              style: boutonTransparent(),
              onPressed: () async {
                String email = emailController.value.text;
                bool boolEmailVerif = await emailVerificator(email);
                if (boolEmailVerif == false) {
                  print(error);
                  error = "Adresse e-mail incorrecte";
                  toggleView();
                } else {
                  error = '';
                  toggleView();
                  emailController.clear();
                  sendEmail(email);
                  await database.addProspect(email);
                }
              },
              child: Text(
                "Ca m'intéresse !",
                style: GoogleFonts.montserrat(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Form(
          key: formKey,
          child: Text(
            error,
            style: const TextStyle(
              fontSize: 15.0,
              fontFamily: 'Montserrat',
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}

class Alignement extends StatelessWidget {
  bool colonne;
  List<Widget> children = const <Widget>[];

  Alignement({
    Key? key,
    required this.colonne,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (colonne == true) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: children,
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: children,
      );
    }
  }
}
