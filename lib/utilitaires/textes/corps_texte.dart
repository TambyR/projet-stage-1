// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

/* corps_texte.dart version 0.6 ----> Liens hypertextes

Une StatelessWidget CorpsTexteHTML qui prend en argument un booléen et une String, et qui renvoie un widget Html à l'intérieur d'un Container (pour le padding et autres manipulations futures)
*/

import 'package:flutter/material.dart';
import 'package:flutter_html/style.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:site_nooks_v0/utilitaires/boutons/mailto.dart';

class CorpsTexteHTML extends StatelessWidget {
  var texte;
  var noir;

  CorpsTexteHTML({
    Key? key,
    this.texte,
    this.noir,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color couleur;
    if (noir == true) {
      couleur = Colors.black;
    } else {
      couleur = Colors.white;
    }
    return Html(
      onLinkTap: (url, _, __, ___) => launchMailto(),
      style: {
        "body": Style(
          fontSize: const FontSize(20.0),
          fontFamily: 'Montserrat',
          color: couleur,
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
        ),
        "h1": Style(
          fontSize: const FontSize(65.0),
          fontFamily: 'Montserrat',
          color: couleur,
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
        ),
        "h2": Style(
          fontSize: const FontSize(50.0),
          fontFamily: 'Montserrat',
          color: couleur,
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
        ),
        "h3": Style(
          fontSize: const FontSize(28.0),
          fontFamily: 'Montserrat',
          color: couleur,
          fontWeight: FontWeight.w600,
          textDecoration: TextDecoration.underline,
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
        ),
        "h4": Style(
          fontSize: const FontSize(25.0),
          fontFamily: 'Montserrat',
          color: couleur,
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
        ),
        "h5": Style(
          fontSize: const FontSize(24.0),
          fontFamily: 'Montserrat',
          color: couleur,
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
        ),
        "p": Style(
          fontSize: const FontSize(20.0),
          fontFamily: 'Montserrat',
          color: couleur,
          margin: const EdgeInsets.all(1.0),
          padding: const EdgeInsets.all(1.0),
        ),
        "li": Style(
          fontSize: const FontSize(20.0),
          fontFamily: 'Montserrat',
          color: couleur,
          margin: const EdgeInsets.all(15.0),
        ),
        "a": Style(
          fontSize: const FontSize(20.0),
          fontFamily: 'Montserrat',
          color: couleur,
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
        ),
        "small": Style(
          fontSize: const FontSize(15.0),
          fontFamily: 'Montserrat',
          color: couleur,
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
        ),
      },
      data: texte,
      shrinkWrap: true,
    );
  }
}
