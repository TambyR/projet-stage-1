// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

class BanniereGenerator extends StatelessWidget {
  List<Widget> children = const <Widget>[];
  var textetitre; //Widget HTML
  List<Widget> images = const <Widget>[]; //Widget Image

  BanniereGenerator({
    Key? key,
    this.images = const <Widget>[],
    this.textetitre,
    required this.children,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    dynamic screenWidth = MediaQuery.of(context).size.width;
    placeur() {
      if (screenWidth > 875) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textetitre,
                  Column(children: children),
                ],
              ),
            ),
            Flexible(
              child: Column(children: images),
            ),
          ],
        );
      } else {
        return Column(
          //en colonne, les widgets de 'droite' passent au-dessus
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: textetitre),
            Column(children: images),
            Center(child: Column(children: children)),
          ],
        );
      }
    }

    return Column(
      children: [
        Container(
          width: screenWidth,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 27.5),
          color: Colors.transparent,
          child: Center(
            child: placeur(),
          ),
        ),
      ],
    );
  }
}
