// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

/*header.dart version 0.3 ----> Optimisation (suppression d'une condition)
  -Un Container qui renvoie une Row de plusieurs TextButton et de SizedBox
  OU
  -Un Container qui renvoie un PopupMenuButton (dans un widget Theme pour supprimer l'animation)

  -Un Widget HeaderButton qui construit un bouton, avec une condition (qui teste si le bouton mène à une page du projet ou s'il ouvre un lien). Simplifie le code.

  Utilisation du MediaQuery pour la condition
*/

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site_nooks_v0/pages/accueil.dart';
import 'package:site_nooks_v0/pages/connexion.dart';
import 'package:site_nooks_v0/pages/devenir_auteur.dart';
import 'package:site_nooks_v0/pages/les_nouvelles_de_nooks.dart';
import 'package:site_nooks_v0/utilitaires/boutons/mailto.dart';
import 'package:site_nooks_v0/utilitaires/services/authentification_service.dart';
import 'package:site_nooks_v0/utilitaires/services/database_service.dart';
import 'package:site_nooks_v0/utilitaires/services/app_user.dart';
import 'package:site_nooks_v0/utilitaires/textes/corps_texte.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic screenWidth = MediaQuery.of(context).size.width;
    dynamic screenHeight = MediaQuery.of(context).size.height;
    double limite = 100.0 + screenWidth * 0.01;
    final user = Provider.of<AppUser?>(context);
    bool connected = (user != null);
    final AuthentificationService auth = AuthentificationService();

    return StreamBuilder<AppUserData?>(
      stream: DatabaseService(userID: user?.uid).userget,
      initialData: null,
      builder: (context, snapshot) {
        AppUserData? userData = snapshot.data;
        if (screenWidth > 930) {
          return Container(
            padding: EdgeInsets.only(
                top: screenHeight * 0.065,
                bottom: screenHeight * 0.065,
                left: limite),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                HeaderButton(
                    texte: "Devenir Auteur", page: const DevenirAuteur()),
                const SizedBox(width: 20.0),
                HeaderButton(
                    texte: "Les Nouvelles de Nooks",
                    page: const LesNouvellesDeNooks()),
                const SizedBox(width: 20.0),
                HeaderButton(texte: "Contactez-nous"),
                const SizedBox(width: 20.0),
                connected
                    ? TextButton(
                        onPressed: () => auth.signOut(),
                        child: CorpsTexteHTML(
                            texte: userData?.pseudo ?? " ", noir: false),
                      )
                    : HeaderButton(texte: "Connexion", page: const Connexion()),
              ],
            ),
          );
        } else {
          return Container(
            padding: EdgeInsets.only(
                top: screenHeight * 0.065,
                bottom: screenHeight * 0.065,
                right: 20.0),
            alignment: Alignment.centerRight,
            child: Theme(
              data: Theme.of(context).copyWith(
                splashColor: Colors.transparent,
                hoverColor: Colors.grey[850],
                highlightColor: Colors.grey[900],
              ),
              child: PopupMenuButton(
                tooltip: "Menu",
                color: Colors.grey[800],
                icon: const Icon(Icons.menu, color: Colors.white),
                iconSize: 48.0,
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                    child: CorpsTexteHTML(texte: "Accueil", noir: false),
                    value: "Accueil",
                  ),
                  PopupMenuItem(
                    child: CorpsTexteHTML(texte: "Devenir Auteur", noir: false),
                    value: "Devenir Auteur",
                  ),
                  PopupMenuItem(
                    child: CorpsTexteHTML(
                        texte: "Les Nouvelles de Nooks", noir: false),
                    value: "Les Nouvelles de Nooks",
                  ),
                  PopupMenuItem(
                    child: CorpsTexteHTML(texte: "Contactez-nous", noir: false),
                    value: "Contactez-nous",
                  ),
                  PopupMenuItem(
                    child: CorpsTexteHTML(
                        texte:
                            connected ? userData?.pseudo ?? " " : "Connexion",
                        noir: false),
                    value: "Auth",
                  ),
                ],
                onSelected: (value) {
                  switch (value) {
                    case "Accueil":
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (c) => const Accueil()));
                      break;
                    case "Devenir Auteur":
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (c) => const DevenirAuteur()));
                      break;
                    case "Les Nouvelles de Nooks":
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (c) => const LesNouvellesDeNooks()));
                      break;
                    case "Contactez-nous":
                      launchMailto();
                      break;
                    case "Auth":
                      connected
                          ? auth.signOut()
                          : Navigator.of(context).push(MaterialPageRoute(
                              builder: (c) => const Connexion()));
                      break;
                  }
                },
              ),
            ),
          );
        }
      },
    );
  }
}

class HeaderButton extends StatelessWidget {
  String texte;
  var page;

  HeaderButton({
    Key? key,
    required this.texte,
    this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    testpage() {
      if (page == null) {
        return launchMailto();
      } else {
        return Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      }
    }

    return TextButton(
      onPressed: () => testpage(),
      child: CorpsTexteHTML(texte: "<p>" + texte + "</p>", noir: false),
    );
  }
}
