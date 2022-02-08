// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

/*bouton_rouge.dart version 0.1
Stateless Widget qui renvoie un TextButton contenant une widget Text
Prend en argument un texte (String) et une page (Widget)
Coloré en rouge
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_nooks_v0/utilitaires/boutons/mailto.dart';

class BoutonRouge extends StatelessWidget {
  String texte;
  var page;

  BoutonRouge({
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
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        overlayColor: MaterialStateProperty.all(Colors.red[700]),
        backgroundColor: MaterialStateProperty.all(Colors.red),
        minimumSize: MaterialStateProperty.all(const Size(170.0, 50.0)),
      ),
      onPressed: () => testpage(),
      child: Text(
        texte,
        style: GoogleFonts.montserrat(
          fontSize: 15.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
