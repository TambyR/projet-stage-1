// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

/* forme_des_pages.dart v0.2 ----> Responsive
Renvoie une Widget Scaffold
  -body: une widget Container
    -Contient une BoxDecoration avec une image de fond
    -Affiche une ListView de plusieurs widgets SizedBox et BlocGenerator (../utilitaires/decoration) ainsi que le Widget Header (../utilitaires/layouts)

  -floatingActionButton: la widget LogoFlottant dans ../utilitaires/boutons
  -bottomNavigationBar: la widget Footer dans ../utilitaires/layouts

Utilisation de MediaQuery pour le responsive
*/

import 'package:flutter/material.dart';
import 'package:site_nooks_v0/utilitaires/boutons/logo_flottant.dart';
import 'package:site_nooks_v0/utilitaires/layouts/footer.dart';
import 'package:site_nooks_v0/utilitaires/layouts/header.dart';

class PageConstructor extends StatelessWidget {
  Widget page;
  var banniere;

  PageConstructor({
    Key? key,
    this.banniere,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic screenHeight = MediaQuery.of(context).size.height;
    dynamic screenWidth = MediaQuery.of(context).size.width;
    double hauteurSizedBox = 40.0;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/Image_de_fond.jpg"),
                fit: BoxFit.cover)),
        child: ListView(children: [
          const Header(),
          banniere ?? const SizedBox.shrink(),
          SizedBox(height: hauteurSizedBox * 1.75),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: page),
          SizedBox(height: hauteurSizedBox * 1.2),
        ]),
      ),
      floatingActionButton: Padding(
        padding:
            EdgeInsets.only(top: screenHeight * 0.05, left: screenWidth * 0.01),
        child: const LogoFlottantV2(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      bottomNavigationBar: const Footer(),
    );
  }
}
