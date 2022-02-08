import 'package:flutter/material.dart';
import 'package:site_nooks_v0/pages/connexion.dart';
import 'package:site_nooks_v0/utilitaires/boutons/formulaires/formulaire_inscription.dart';
import 'package:site_nooks_v0/utilitaires/constructeurs/bloc_generator.dart';
import 'package:site_nooks_v0/utilitaires/constructeurs/page_constructor.dart';
import 'package:site_nooks_v0/utilitaires/textes/corps_texte.dart';

class Inscription extends StatelessWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageConstructor(
      page: Column(
        children: [
          BlocGenerator(
            couleur: Colors.white.withOpacity(0.95),
            textetitre: CorpsTexteHTML(
              texte: """<h2>Bienvenue, inscrivez-vous pour continuer.</h2>""",
              noir: true,
            ),
            children: [
              const FormulaireInscription(),
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Connexion(),
                  ),
                ),
                child: CorpsTexteHTML(
                  noir: true,
                  texte: """
                    <span style="text-decoration:underline">
                      <small>
                        <p>Vous avez déjà un compte ? Connectez-vous !</p>
                      </small>
                    </span>
                    """,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
