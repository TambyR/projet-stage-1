/*malto.dart v0.1
  Contient une fonction qui crée un format d'e-mail
*/

import 'package:url_launcher/url_launcher.dart';
import 'package:mailto/mailto.dart';

launchMailto() async {
  Mailto mailtoLink = Mailto(
    to: ['contact@nooks.app'],
    subject: 'Prise de contact depuis le site',
  );
  //conversion en String pour utiliser launch()
  return await launch('$mailtoLink');
}
