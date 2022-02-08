// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, avoid_unnecessary_containers

/*footer.dart version 0.5 ----> Icones + Optimisation
  Contient quatre StatelessWidget:
  -PetiteIcone
    -Deux Widgets en argument (popup pour la page et icone pour l'image)
    -Renvoie un IconButton
  -PolitiqueLink
    -Renvoie un TextButton qui mène à la page Politique de Confidentialité
  -Alignement
    -Renvoie une Row ou une Column en fonction de la taille de l'écran
  -Footer
    -Un Container qui renvoie une Alignement de plusieurs Widget (TextButton, PolitiqueLink et PetiteIcone)
    -L'Alignement (Row ou Colonne) dépend de la taille de l'écran

  Utilisation du MediaQuery pour la condition
*/

import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_nooks_v0/pages/politique_de_confidentialite.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenWidth > 551.0 ? 40.0 : 70.0,
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.066),
      color: Colors.white,
      child: Alignement(
        colonne: screenWidth > 551.0 ? false : true,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "2022 Nooks ©",
                  style: GoogleFonts.montserrat(
                    fontSize: 15.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                screenWidth > 551.0
                    ? const SizedBox.shrink()
                    : const PolitiqueLink(),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                screenWidth > 551.0
                    ? const PolitiqueLink()
                    : const SizedBox.shrink(),
                PetiteIcone(
                  popup: "https://www.facebook.com/App.Nooks/",
                  icone: FontAwesome.facebook,
                ),
                PetiteIcone(
                  popup: "https://www.instagram.com/nooks.app/",
                  icone: FontAwesome.instagram,
                ),
                PetiteIcone(
                  popup: "https://www.linkedin.com/company/nooks-app/",
                  icone: FontAwesome.linkedin,
                ),
                PetiteIcone(
                  popup: "https://twitter.com/AppNooks",
                  icone: FontAwesome.twitter,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PetiteIcone extends StatelessWidget {
  String popup;
  var icone;
  double padding = 8.0;

  PetiteIcone({
    Key? key,
    required this.popup,
    required this.icone,
    this.padding = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.all(padding),
      onPressed: () => launch(popup),
      icon: Icon(
        icone,
        color: Colors.black,
        size: 17.5,
      ),
    );
  }
}

class PolitiqueLink extends StatelessWidget {
  const PolitiqueLink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const PolitiqueDeConfidentialite(),
        ),
      ),
      child: Text(
        "Politique de confidentialité",
        style: GoogleFonts.montserrat(
          fontSize: 15.0,
          color: Colors.black,
          fontWeight: FontWeight.w300,
        ),
      ),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      );
    }
  }
}
