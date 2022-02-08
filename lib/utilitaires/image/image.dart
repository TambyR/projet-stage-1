// ignore_for_file: must_be_immutable

/*image.dart version 0.1
Statless Widget qui demande une string (adresse de l'image), une hauteur et une largeur
Renvoie une image .jpg/.png dans un Container, ou une image svg dans une SizedBox (s'il s'agit d'une image .svg)
Utilisation de "BoxFit" pour que la taille de l'image s'adapte aux proportions demandées en argument (pour les format .jpg et .png)
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageGenerator extends StatelessWidget {
  String image;
  double height;
  double width;

  ImageGenerator({
    Key? key,
    required this.image,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String format = ".svg";
    testformat() {
      if (image.contains(format)) {
        return SizedBox(
          height: height,
          width: width,
          child: SvgPicture.asset(image),
        );
      } else {
        return Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        );
      }
    }

    return testformat();
  }
}
