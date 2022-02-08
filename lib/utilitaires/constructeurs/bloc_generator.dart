// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

/*bloc_generator.dart version 0.3 ----> Responsive + Simplification
  Contient deux Stateless Widgets

    -Alignement (demande s'il s'agit d'une Column ou d'une Row, demande des children)
      -Sert à passer facilement d'une Column à une Row (avec condition, facilite le responsive)

    -BlocGenerator (demande une couleur, des children)(deux arguments facultatifs, booléen agencementTitre et Widget textetitre)(un booléen "accueil" par défaut sur false, crée un bloc faisant la largeur de l'écran si true)
      -Contient une fonction Placeur()
        -Distribue d'abord les children dans deux nouvelles listes, selon leur ordre de déclaration
          -Le premier children reçu va dans la liste 'gauche', le deuxième dans la liste 'droite', le troisième dans la liste 'gauche et ainsi de suite
        -Utilise un SwitchCase pour placer les children selon plusieurs conditions (responsive)

Utilisation de MediaQuery pour le responsive
*/

import 'package:flutter/material.dart';
import 'package:site_nooks_v0/utilitaires/textes/corps_texte.dart';

class BlocGenerator extends StatelessWidget {
  var couleur;
  List<Widget> children = const <Widget>[];
  var textetitre; //Widget
  BlocGenerator({
    Key? key,
    required this.couleur,
    var this.textetitre,
    required this.children,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    dynamic screenWidth = MediaQuery.of(context).size.width;
    bool grandEcran = screenWidth > 665;
    padding() {
      int i;
      for (i = 0; i < children.length; i++) {
        if (children[i] == CorpsTexteHTML() ||
            children[i] == const SizedBox.shrink()) {
          return children[i];
        } else {
          children[i] = Padding(
            padding:
                EdgeInsets.symmetric(vertical: screenWidth > 665 ? 8.0 : 12.0),
            child: children[i],
          );
          return children[i];
        }
      }
    }

    placeur() {
      int i; //variable pour se balader dans les tableaux
      List<Widget> gauche = <Widget>[];
      List<Widget> droite = <Widget>[];

      // répartit les children reçu dans BlocConstructor dans deux listes distinctes
      for (i = 0; i < children.length; i++) {
        if (i.isEven) {
          gauche.add(children[i]);
        } else {
          droite.add(children[i]);
        }
      }

      switch (children.length) {
        case 1:
          return Center(
            child: children[0],
          );
        case 2:
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children,
          );
        default:
          if (screenWidth > 665) {
            return Row(
              //en colonne, les widgets de 'droite' passent au-dessus
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: Column(children: gauche),
                ),
                Flexible(
                  child: Column(children: droite),
                ),
              ],
            );
          } else {
            return Column(
              //en colonne, les widgets de 'droite' passent au-dessus
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(children: droite),
                Column(children: gauche),
              ],
            );
          }
      }
    }

    padding();
    return Column(
      children: [
        Container(
          width: 975.0,
          padding: textetitre == null
              ? EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: grandEcran ? 27.5 : 20.0,
                )
              : EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: grandEcran ? 27.5 : 20.0,
                  top: grandEcran ? 15.5 : 8.0,
                ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0), color: couleur),
          child: Center(
            child: Column(
              children: [
                textetitre ?? const SizedBox.shrink(),
                placeur(),
              ],
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
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
