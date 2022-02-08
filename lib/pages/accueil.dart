// ignore_for_file: prefer_const_literals_to_create_immutables

/*accueil.dart version 0.1.6 ----> Bloc Generator + Page Constructor + responsive
Renvoie une Widget PageConstructor
  -Children: Une liste de widgets BlocGenerator intercalés par des widgets SizedBox
    -Un Container plus petit (et donc créé manuellement) tout en bas
    -Pour le 1er bloc, utilisation de deux SizedBox.shrink (vides) pour le placement

Utilisation du MediaQuery pour le responsive
*/

import 'package:flutter/material.dart';
import 'package:site_nooks_v0/pages/devenir_auteur.dart';
import 'package:site_nooks_v0/utilitaires/boutons/bouton_rouge.dart';
import 'package:site_nooks_v0/utilitaires/boutons/newsletter.dart';
import 'package:site_nooks_v0/utilitaires/constructeurs/banniere_generator.dart';
import 'package:site_nooks_v0/utilitaires/constructeurs/bloc_generator.dart';
import 'package:site_nooks_v0/utilitaires/constructeurs/page_constructor.dart';
import 'package:site_nooks_v0/utilitaires/image/image.dart';
import 'package:site_nooks_v0/utilitaires/textes/corps_texte.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    double hauteurSizedBox = 40.0;
    return PageConstructor(
      banniere: BanniereGenerator(
        textetitre: CorpsTexteHTML(
          texte: """
            <div style = "text-align:center">
              <h1>Envie de lire autrement ?</h1>
            </div>
          """,
          noir: false,
        ),
        children: [
          CorpsTexteHTML(
            texte: """
              <div style = "text-align:center">
                <h4>Vivez vos livres comme une série, chaque semaine avec Nooks</h4>
              </div>
            """,
            noir: false,
          ),
          SizedBox(height: hauteurSizedBox * 0.75),
          const InscriptionNewletter(),
        ],
        images: [
          ImageGenerator(
              image: "images/Image_grand_smartphone.png",
              height: 530.0,
              width: 325.0),
        ],
      ),
      page: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocGenerator(
              couleur: const Color.fromRGBO(244, 222, 93, 0.95),
              children: [
                CorpsTexteHTML(
                  texte: """
                    <p>
                    En chapitres, en nouvelles, en sagas épiques,
                    retrouvez sur notre plateforme des histoires
                    exclusives adaptées à votre temps de
                    lecture. Notre application au style épuré est
                    simple d’utilisation.
                    </p>
                    <p>
                    Quant à nos univers ? Ils sont riches et
                    passionnants.
                    </p>
                    <p>
                    Chez Nooks, vous trouverez toujours de quoi
                    nourrir votre esprit.
                    </p>
                    """,
                  noir: true,
                ),
                ImageGenerator(
                    image: "images/Image_main_smartphone.jpg",
                    height: 210,
                    width: 325),
                const SizedBox.shrink(),
                const SizedBox.shrink(),
              ]),
          SizedBox(height: hauteurSizedBox),
          BlocGenerator(
            couleur: Colors.white.withOpacity(0.95),
            textetitre: CorpsTexteHTML(
              texte: """<h2>Les formats Nooks</h2>""",
              noir: true,
            ),
            children: [
              CorpsTexteHTML(
                texte: """
                  <p>Nos auteurs vous proposeront sur Nooks trois formats de parution, pour tous les goûts :</p>
                  <ul>
                    <li>Le format hebdomadaire : chaque semaine suivez votre histoire sur format court.</li>
                    <li>Le format bimensuel : deux fois par mois découvrez le nouvel épisode de votre saga favorite.</li>
                    <li>Le format mensuel : découvrez chaque mois une nouvelle publiée par nos auteurs phares.</li>
                  </ul>
                  """,
                noir: true,
              ),
              BoutonRouge(
                  texte: "Devenir auteur !", page: const DevenirAuteur()),
            ],
          ),
          SizedBox(height: hauteurSizedBox),
          BlocGenerator(
            couleur: Colors.white.withOpacity(0.95),
            textetitre: CorpsTexteHTML(
              texte: "<h2>Bientôt disponible...</h2>",
              noir: true,
            ),
            children: [
              ImageGenerator(
                  image: "images/Image_google.jpg", height: 50.0, width: 165.0),
              ImageGenerator(
                  image: "images/svg_lambda.svg", height: 118, width: 110),
              ImageGenerator(
                  image: "images/Image_apple.jpg", height: 50.0, width: 165.0),
            ],
          ),
          SizedBox(height: hauteurSizedBox / 2),
          BlocGenerator(
            couleur: Colors.transparent,
            children: [
              const InscriptionNewletter(),
            ],
          ),
          SizedBox(height: hauteurSizedBox / 2),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: Colors.white.withOpacity(0.95)),
            width: 975.0,
            child: CorpsTexteHTML(
              texte: """
                <p>
                  Vous pouvez nous contacter par email
                  <span style="text-decoration:underline;">
                    <a>
                      ici
                    </a>
                  </span>
                </p>""",
              noir: true,
            ),
          ),
        ],
      ),
    );
  }
}
