/* les_nouvelles_de_nooks.dart version 0.6 ----> Bloc Generator + Page Constructor + responsive
Renvoie une Widget PageConstructor
  -Children: Un Widget BlocGenerator
*/

import 'package:flutter/material.dart';
import 'package:site_nooks_v0/utilitaires/constructeurs/bloc_generator.dart';
import 'package:site_nooks_v0/utilitaires/constructeurs/page_constructor.dart';
import 'package:site_nooks_v0/utilitaires/textes/corps_texte.dart';

class LesNouvellesDeNooks extends StatefulWidget {
  const LesNouvellesDeNooks({Key? key}) : super(key: key);

  @override
  _LesNouvellesDeNooksState createState() => _LesNouvellesDeNooksState();
}

class _LesNouvellesDeNooksState extends State<LesNouvellesDeNooks> {
  @override
  Widget build(BuildContext context) {
    return PageConstructor(
      page: Column(
        children: [
          BlocGenerator(
            couleur: Colors.white.withOpacity(0.95),
            children: [
              CorpsTexteHTML(
                texte: """
              <h2>Les nouvelles de Nooks</h2>
              <p>&nbsp</p>
              <p>
                À l’occasion de son lancement, l’application Nooks organise son premier concours de nouvelles. Il s’agit d’un concours de nouvelles dont le thème est : “Un son peu commun”. Le gagnant du concours se verra offrir un contrat d’édition, avec sa rémunération dû, à compte d’éditeur pour publier sa nouvelle sur notre application Nooks lors de sa sortie. Cependant d’autres auteurs dont les nouvelles auront retenu notre attention pourront être contactés à notre discrétion pour de futures collaborations.
              </p>
              <p>&nbsp</p>
              <p>Le thème porte sur “Un son peu commun”. Il est libre d’interprétation et d’expression.</p>
              <p>
                Tous les genres et sous-genres de fiction sont acceptés, du moment que l'univers dans lequel l’action se déroule est propre à l’auteur.
              </p>
              <p>&nbsp</p>
              <p>
                Les nouvelles seront à envoyer au plus tard le 6 septembre 2021. Les gagnants seront annoncés le 6 Novembre 2021.
              </p>
              <p>
                Un auteur ne pourra participer qu’une seule fois au concours en envoyant un seul texte qu’il aura entièrement rédigé seul. Nous rappelons qu’il est nécessaire de respecter le droit d’auteur et l’absence de plagiat.
              </p>
              <p>&nbsp</p>
              <p>
                Les nouvelles devront être envoyées au format word, sans style particulier, et comporter 60 000 caractères maximum (espaces compris). Une version PDF en supplément pourra être acceptée si vous souhaitez donner une mise en page particulière. L’auteur garde la propriété intellectuelle de son œuvre jusqu'à signature du contrat pour le gagnant.
              </p>
              <p>&nbsp</p>
              <p>
                Les écrits devront être envoyés à l’adresse mail suivante :
                <span style="text-decoration:underline;">
                  <a>
                    concours@nooks.app
                  </a>
                </span>
                , avec votre nom, votre prénom et une adresse mail sur laquelle il est possible de vous contacter. L’envoi de la nouvelle vaut acceptation du règlement du concours. Un accusé de réception sera envoyé dès réception du texte.
              </p>
              <p>Les données des participants ne seront pas conservées au-delà du concours.</p>
              """,
                noir: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
