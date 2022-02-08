/*devenir_auteur.dart version 0.8 ----> Bloc Generator + Page Constructor + responsive
Renvoie une Widget PageConstructor
  -Children: Une liste de widgets BlocGenerator intercalés par des widgets SizedBox
    -Utilisation d'un Padding autour du TexteHtml du 1er Bloc
    -Pour le 3e bloc, utilisation de deux SizedBox.shrink (vides) pour le placement

Utilisation du MediaQuery pour le responsive
*/

import 'package:flutter/material.dart';
import 'package:site_nooks_v0/utilitaires/boutons/bouton_rouge.dart';
import 'package:site_nooks_v0/utilitaires/constructeurs/bloc_generator.dart';
import '../utilitaires/constructeurs/page_constructor.dart';
import 'package:site_nooks_v0/utilitaires/image/image.dart';
import 'package:site_nooks_v0/utilitaires/textes/corps_texte.dart';

class DevenirAuteur extends StatelessWidget {
  const DevenirAuteur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double hauteurSizedBox = 40.0;
    return PageConstructor(
      page: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocGenerator(
            couleur: const Color.fromRGBO(108, 185, 173, 0.95),
            textetitre: CorpsTexteHTML(
                texte: """<h2>Rejoindre nos auteurs</h2><p>&nbsp</p>""",
                noir: false),
            children: [
              CorpsTexteHTML(
                texte: """
                <p>Vous êtes un auteur expérimenté ou en devenir ?</p>
                <p>&nbsp</p>
                <p>
                  Nous recherchons nos prochaines histoires
                  originales Nooks.
                </p>
                <p>&nbsp</p>               
                <p>N'attendez plus et envoyez-nous votre manuscrit.</p>
                """,
                noir: false,
              ),
              ImageGenerator(
                  image: "images/Image_machine_a_ecrire.jpg",
                  height: 230.0,
                  width: 300.0),
              BoutonRouge(texte: "Je postule !"),
            ],
          ),
          SizedBox(height: hauteurSizedBox),
          BlocGenerator(
            couleur: Colors.white.withOpacity(0.95),
            textetitre: CorpsTexteHTML(
                texte: """<h2>Pourquoi écrire chez Nooks ?</h2>""", noir: true),
            children: [
              CorpsTexteHTML(
                texte: """
                  <ul>
                    <li>
                    <p>
                      Rejoindre Nooks, c’est donner une chance à vos histoires d’atteindre le
                      plus grand nombre et de fédérer toute une communauté.
                    </p>
                    </li>
                    <li>
                    <p>
                      C'est également la possibilité pour vous d'obtenir un suivi et un
                      coaching de qualité.
                    </p>
                    </li>
                  </ul>
                  """,
                noir: true,
              ),
            ],
          ),
          SizedBox(height: hauteurSizedBox),
          BlocGenerator(
            couleur: Colors.white.withOpacity(0.95),
            textetitre: CorpsTexteHTML(
                texte: """<h2>Notre ligne éditoriale</h2>""", noir: true),
            children: [
              CorpsTexteHTML(
                texte: """
                  <p>
                    Chez Nooks, nous publions des fictions de tous genres que nous
                    appelons <i>histoires originales</i>.
                  </p>
                  <p>&nbsp</p>
                  <p>
                    Elles paraissent périodiquement sous trois formats différents
                    (<b>hebdomadaire</b>, <b>bimensuel</b> ou <b>mensuel</b>).
                  </p>
                  """,
                noir: true,
              ),
              ImageGenerator(
                  image: "images/svg_lambda.svg", height: 200, width: 185),
              const SizedBox.shrink(),
              const SizedBox.shrink(),
            ],
          ),
          SizedBox(height: hauteurSizedBox),
          BlocGenerator(
            couleur: Colors.white.withOpacity(0.95),
            textetitre: CorpsTexteHTML(
                texte: """<h2>La rémunération de nos auteurs</h2>""",
                noir: true),
            children: [
              CorpsTexteHTML(
                texte: """
                  <p>
                    Les auteurs écrivant pour Nooks sont assurés d'obtenir une rémunération directe et calquée sur la satisfaction de leur audience.
                  </p>
                  <p>&nbsp</p>
                  <p>
                    Notre système de rémunération permet de profiter de l'avantage d'être une
                    <span style="text-decoration:underline">
                      maison d'édition numérique
                    </span>
                  , à savoir n'avoir aucun intermédiaire.
                  </p>
                  """,
                noir: true,
              ),
            ],
          ),
          SizedBox(height: hauteurSizedBox / 2),
          BlocGenerator(
            couleur: Colors.transparent,
            children: [
              BoutonRouge(texte: "Je postule !"),
            ],
          ),
        ],
      ),
    );
  }
}
