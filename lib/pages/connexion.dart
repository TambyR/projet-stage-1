import 'package:flutter/material.dart';
import 'package:site_nooks_v0/pages/inscription.dart';
import 'package:site_nooks_v0/utilitaires/boutons/formulaires/formulaire_connexion.dart';
import 'package:site_nooks_v0/utilitaires/constructeurs/bloc_generator.dart';
import 'package:site_nooks_v0/utilitaires/constructeurs/page_constructor.dart';
import 'package:site_nooks_v0/utilitaires/textes/corps_texte.dart';

class Connexion extends StatelessWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageConstructor(
      page: Column(
        children: [
          BlocGenerator(
            couleur: Colors.white.withOpacity(0.95),
            textetitre: CorpsTexteHTML(
              texte: """<h2>Bienvenue, connectez-vous pour continuer.</h2>""",
              noir: true,
            ),
            children: [
              const FormulaireConnexion(),
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Inscription(),
                  ),
                ),
                child: CorpsTexteHTML(
                  noir: true,
                  texte: """
                    <span style="text-decoration:underline">
                      <small>
                        <p>Pas encore de compte ? Créez-en-un !</p>
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
