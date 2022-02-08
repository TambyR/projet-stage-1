/*logo_flottant.dart version 0.4 ----> Suppression du LogoFlottant V1
LogoFlottantV2:
Statless Widget qui renvoie un ElevatedButton
*/

import 'package:flutter/material.dart';
import 'package:site_nooks_v0/pages/accueil.dart';
import 'package:site_nooks_v0/utilitaires/image/image.dart';

class LogoFlottantV2 extends StatelessWidget {
  const LogoFlottantV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: ImageGenerator(
          image: "images/svg_lambda.svg", height: 100, width: 100),
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Accueil(),
        ),
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(0.0)),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        fixedSize: MaterialStateProperty.all(const Size(90.0, 95.0)),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
          ),
        ),
        elevation: MaterialStateProperty.all(0.0),
      ),
    );
  }
}
