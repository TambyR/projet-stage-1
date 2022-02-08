/* politique_de_confidentialite.dart version 0.6 ----> Bloc Generator + Page Constructor + responsive
Renvoie une Widget PageConstructor
  -Children: Un Widget BlocGenerator
*/

import 'package:flutter/material.dart';
import 'package:site_nooks_v0/utilitaires/constructeurs/bloc_generator.dart';
import '../utilitaires/constructeurs/page_constructor.dart';
import 'package:site_nooks_v0/utilitaires/textes/corps_texte.dart';

class PolitiqueDeConfidentialite extends StatefulWidget {
  const PolitiqueDeConfidentialite({Key? key}) : super(key: key);

  @override
  _PolitiqueDeConfidentialiteState createState() =>
      _PolitiqueDeConfidentialiteState();
}

class _PolitiqueDeConfidentialiteState
    extends State<PolitiqueDeConfidentialite> {
  @override
  Widget build(BuildContext context) {
    return PageConstructor(
      page: Column(
        children: [
          BlocGenerator(
            couleur: Colors.white.withOpacity(0.95),
            children: [
              CorpsTexteHTML(
                texte: """
              <h2>Politique de confidentialité</h2>
              <p>&nbsp</p>
              <p><small>Dernière révision : 05/04/2021</small></p>
              <p>&nbsp</p>
              <span style="text-decoration:underline"><h3>Introduction</h3></span>
              <p>&nbsp</p>
              <p>
                Nous (« nous ») nous soucions de la vie privée des utilisateurs (l’« utilisateur » ou « vous») 
                de notre site Internet et/ou de notre espace mobile (le « Site » et l’« Espace mobile »,
                respectivement) et nous nous engageons à protéger les informations que les
                utilisateurs partagent avec nous lorsqu’ils utilisent notre Site et/ou notre Espace
                mobile (collectivement, les « Propriétés numériques »), et nous nous engageons
                pleinement à protéger et à utiliser vos informations conformément à la loi applicable.
                Cette Politique de confidentialité décrit nos pratiques en matière de recueil,
                d'utilisation et de divulgation de vos informations par le biais de nos propriétés
                numériques (les « Services »), lorsque vous accédez aux Services depuis votre appareil.
                Avant d'accéder ou d'utiliser l'un de nos Services, veuillez lire attentivement cette
                Politique de confidentialité et vous assurer que vous comprenez parfaitement nos
                pratiques concernant vos informations. Si vous lisez et comprenez pleinement cette
                Politique de confidentialité, et que vous restez opposé(e) à nos pratiques, vous devez
                immédiatement et cesser toute utilisation de nos Propriétés numérique et de nos
                Services. En utilisant nos Services, vous acceptez les conditions de cette Politique de
                confidentialité et le fait de continuer à utiliser les Services constitue votre acceptation
                de cette Politique de confidentialité et de tout amendement à celle-ci.
              </p>
              <p>
                Dans la présente Politique de confidentialité, vous trouverez des explications sur les
                questions suivantes :
              </p>
              <ul>
                <li>Les informations que nous recueillons</li>
                <li>Comment nous recueillons les informations</li>
                <li>Pourquoi nous recueillons les informations</li>
                <li>Avec qui nous partageons les informations</li>
                <li>Où sont stockées les informations</li>
                <li>Combien de temps sont conservées les informations</li>
                <li>Comment nous protégeons les informations</li>
                <li>Mineurs</li>
                <li>Modifications ou mises à jour de la Politique de confidentialité</li>
              </ul>
              <p>&nbsp</p>
              <h3>Les informations que nous recueillons</h3>
              <p>&nbsp</p>
              <p>
                Vous trouverez ci-dessous les différents types d'informations que nous pouvons
                recueillir.
              </p>
              <ul>
                <li>
                  Les informations non identifiées et non identifiables, qui peuvent être fournies
                  par vous lors du processus d'enregistrement ou recueillies lorsque vous utilisez
                  nos Services (les « Informations non personnelles »). Les informations non
                  personnelles ne nous permettent pas d'identifier la personne auprès de qui elles
                  ont été recueillies. Les Informations non personnelles que nous recueillons
                  consistent principalement en des informations techniques et des informations
                  d'utilisation agrégées.
                </li>
                <li>
                  Les informations permettant de vous identifier individuellement, c’est-à-dire les
                  informations qui vous identifient ou qui peuvent, moyennant un effort
                  raisonnable, vous identifier (les « Informations personnelles »). Les Informations
                  personnelles que nous recueillons par le biais de nos Services sont notamment
                  l'adresse e-mail ou d'autres informations demandées à chaque fois que
                  nécessaire. Si nous combinons des Informations personnelles avec des
                  Informations non personnelles, nous traiterons les informations combinées
                  comme des Informations personnelles aussi longtemps qu'elles resteront
                  combinées.
                </li>
              </ul>
              <p>&nbsp</p>
              <h3>Comment nous recueillons les informations</h3>
              <p>&nbsp</p>
              <p>
                Vous trouverez ci-dessous les principales méthodes que nous utilisons pour recueillir
                des informations :
              </p>
              <ul>
                <li>
                  Nous recueillons des informations lorsque vous utilisez les Services. Lorsque vous
                  visitez nos Propriétés numériques ou que vous utilisez nos Services, nous pouvons
                  recueillir, collecter et enregistrer ces utilisations, sessions et informations
                  connexes.
                </li>
                <li>
                  Nous recueillons les informations que vous nous fournissez volontairement. Par
                  exemple, nous recueillons les informations que vous nous fournissez lorsque vous
                  nous contactez directement par n'importe quel canal de communication (par
                  exemple lorsque vous nous envoyez un e-mail contenant un commentaire ou un
                  retour d'information).
                </li>
              </ul>
              <p>&nbsp</p>
              <h3>Pourquoi nous recueillons les informations</h3>
              <p>&nbsp</p>
              <p>
                Nous utilisons vos Informations personnelles aux fins suivantes :
              </p>
              <ul>
                <li>Pour fournir et exploiter les Services</li>
                <li>Pour développer, personnaliser et améliorer nos Services</li>
                <li>
                Pour répondre à vos réactions, demandes et requêtes et vous apporter notre
                assistance
                </li>
                <li>Pour analyser les schémas de demande et d'utilisation</li>
                <li>À d'autres fins internes, de recherche ou de statistiques</li>
                <li>
                  Pour renforcer nos capacités en matière de sécurité des données et de prévention
                  de la fraude
                </li>
                <li>
                  Pour enquêter sur les éventuelles violations, faire respecter nos conditions ou nos
                  politiques, ou se conformer à une loi, une réglementation ou une autorité
                  gouvernementale applicable.
                </li>
                <li>
                  Pour vous envoyer des mises à jour, des avis, des documents promotionnels et
                  d'autres informations concernant nos Services. Si nous vous envoyons des e-mails
                  promotionnels, vous pouvez choisir de ne plus les recevoir en cliquant sur le lien
                  de désabonnement que ces e-mails contiennent.
                </li>
              </ul>
              <p>&nbsp</p>
              <h3>Avec qui nous partageons les informations</h3>
              <p>&nbsp</p>
              <p>
                Nous pouvons partager vos informations avec nos fournisseurs de services, afin
                d'exploiter nos Services (par exemple, en stockant des informations sur les services
                d'hébergement tiers, en fournissant notre assistance technique, etc.)
              </p>
              <p>
                Nous pouvons également divulguer vos informations dans les circonstances
                suivantes : (i) pour enquêter, détecter, prévenir ou prendre des mesures concernant
                des activités illégales ou d'autres actes répréhensibles, des soupçons de fraude ou
                des questions de sécurité ; (ii) pour établir ou exercer nos droits de défense contre des
                revendications légales ; (iii) pour protéger nos droits, nos biens ou notre sécurité
                personnelle et ceux de nos utilisateurs ou du grand public ; (iv) si nous ou l'une de
                nos sociétés affiliées subissons un changement de contrôle, y compris par le biais
                d'une fusion, d'une acquisition ou d'un achat de tous ou de la quasi-totalité de nos
                actifs ; (v) pour collecter, détenir et/ou gérer vos informations par le biais de nos
                fournisseurs de services tiers autorisés (par exemple, des sociétés de services en
                ligne), dans la mesure où cela est raisonnable à des fins commerciales ; ou (vi) pour
                coopérer avec des tiers dans le but d'améliorer votre expérience. Pour éviter toute
                confusion possible, nous pouvons transférer et divulguer à des tiers ou utiliser
                autrement les Informations non personnelles à notre seule discrétion.
              </p>
              <p>&nbsp</p>
              <h5>Cookies et technologies similaires</h5>
              <p>&nbsp</p>
              <p>
                Lorsque vous visitez ou accédez à notre Service, nous autorisons certains tiers à
                utiliser des balises web, des cookies, des pixels invisibles, des scripts, des balises et
                d'autres technologies et services d'analyse (les « Technologies de suivi »). Ces
                Technologies de suivi peuvent permettre à des tiers de recueillir automatiquement
                des informations vous concernant afin d'améliorer la manière dont vous naviguez sur
                nos Propriétés numériques, d'améliorer les performances de nos Propriétés
                numériques et de personnaliser votre expérience sur nos Propriétés numériques,
                ainsi qu'à des fins de sécurité et de prévention de la fraude.
              </p>
              <p>&nbsp</p>
              <p>Pour en savoir plus, consultez notre Politique en matière de cookies.</p>
              <p>&nbsp</p>
              <p>
                Nous ne partagerons pas votre adresse e-mail, ni toute autre Information personnelle,
                avec des sociétés de publicité en ligne ou des réseaux publicitaires sans votre
                consentement.
              </p>
              <p>&nbsp</p>
              <h3>Où sont stockées les informations</h3>
              <p>&nbsp</p>
              <h5>Informations non personnelles</h5>
              <p>&nbsp</p>
              <p>
                Veuillez noter que nos entreprises, ainsi que les partenaires et les fournisseurs de
                services à qui nous faisons confiance, sont situés dans le monde entier. Toutes les
                Informations non personnelles que nous recueillons sont stockées et traitées dans
                diverses juridictions à travers le monde, aux fins détaillées dans la présente Politique
                de confidentialité.
              </p>
              <p>&nbsp</p>
              <h5>Informations personnelles</h5>
              <p>&nbsp</p>
              <p>
                Les Informations personnelles peuvent être conservées, traitées et stockées aux
                États-Unis d'Amérique, en Irlande, au Japon, en Israël et dans d'autres juridictions si
                cela est nécessaire pour la bonne prestation de nos services et/ou si la loi l'exige
                (comme expliqué plus en détail ci-dessous).
              </p>
              <p>&nbsp</p>
              <h3>Combien de temps sont conservées les informations</h3>
              <p>&nbsp</p>
              <p>
                Veuillez noter que nous conservons les informations que nous recueillons aussi
                longtemps que nécessaire pour fournir les Services et pour nous conformer à nos
                obligations légales ou contractuelles envers vous, résoudre les litiges et faire
                respecter nos accords.
              </p>
              <p>
                Nous pouvons rectifier, compléter ou supprimer des informations incomplètes ou
                inexactes, à tout moment et à notre entière discrétion.
              </p>
              <p>&nbsp</p>
              <h3>Comment nous protégeons les informations</h3>
              <p>&nbsp</p>
              <p>
                Le service d'hébergement de nos Propriétés numériques met à notre disposition la
                plateforme en ligne qui nous permet de vous fournir le Service. Vos données peuvent
                être stockées par l'intermédiaire des applications de stockage de données, de bases
                de données ou générales de notre fournisseur d'hébergement. Il stocke vos
                informations sur des serveurs sécurisés derrière un pare-feu et offre un accès sécurisé
                HTTPS à la plupart de ses services.
              </p>
              <p>&nbsp</p>
              <p>
                Quels que soient les efforts faits et les mesures prises par nous et par notre
                hébergeur, nous ne pouvons pas garantir et nous ne garantissons pas la protection et
                la sécurité absolues des informations que vous téléchargez, publiez ou partagez de
                toute autre manière avec nous ou quelqu’un d’autre.
              </p>
              <p>
                Nous vous encourageons à définir des mots de passe forts et à éviter de nous fournir
                ou de fournir à quiconque des informations sensibles dont vous pensez que la
                divulgation pourrait vous causer un préjudice substantiel ou irréparable. En outre, les
                e-mails et les messages instantanés n'étant pas reconnus comme des formes de
                communication sûres, nous vous demandons de, et vous encourageons à, ne pas
                partager d'informations sensibles par l'intermédiaire de ces méthodes.
              </p>
              <p>&nbsp</p>
              <h3>Mineurs</h3>
              <p>&nbsp</p>
              <p>
                Les enfants peuvent utiliser nos Services, mais les enfants qui souhaitent accéder à
                certaines fonctionnalités peuvent devoir fournir certaines informations. Certaines
                informations, notamment celles recueillies par les cookies, les balises web et autres
                technologies similaires peuvent être recueillies automatiquement. Si nous
                recueillons, utilisons ou divulguons délibérément des informations recueillies auprès
                d'un enfant, nous en informerons ses parents et demanderons leur consentement
                conformément à la législation en vigueur. Nous ne conditionnons pas la participation
                d'un enfant à une activité en ligne à la fourniture par cet enfant de plus de données
                de contact qu'il n'est raisonnablement nécessaire pour participer à cette activité.
                Nous utilisons les informations que nous recueillons en fonction des services
                demandés par l'enfant.
              </p>
              <p>
                Nous pouvons également utiliser les coordonnées d'un parent pour communiquer
                avec lui au sujet des activités de son enfant sur les Services. Les parents peuvent
                examiner les informations que nous avons recueillies auprès de leur enfant, refuser
                de nous autoriser à recueillir d'autres informations auprès de leur enfant et
                demander que toute information que nous avons recueillie soit supprimée de nos
                dossiers.
              </p>
              <p>
                Pour examiner, mettre à jour ou supprimer les informations concernant votre enfant,
                veuillez nous contacter.  Pour protéger votre enfant, nous pouvons vous demander
                de nous fournir une preuve de votre identité. Nous pouvons vous refuser l'accès si
                nous pensons qu'il y a un doute sur votre identité. Veuillez noter que certaines
                informations ne peuvent pas être supprimées en raison d'autres obligations légales.
              </p>
              <p>&nbsp</p>
              <p>
                Nous n'utiliserons vos informations personnelles qu'aux fins définies dans cette
                Politique de confidentialité, si :
              </p>
              <ul>
                <li>
                  L'utilisation de vos Informations personnelles est nécessaire pour exécuter un
                  contrat ou prendre des mesures en vue de conclure un contrat avec vous (par
                  exemple, pour vous fournir les Services ou pour vous fournir notre assistance
                  client ou technique)
                </li>
                <li>
                  Il nous est nécessaire d'utiliser vos Informations personnelles pour nous
                  conformer à une obligation légale ou réglementaire pertinente
                </li>
                <li>
                  Il nous est nécessaire d’utiliser vos Informations personnelles pour nos intérêts
                  légitimes en tant qu'entreprise, à condition que cette utilisation soit à tout
                  moment proportionnée et respectueuse de vos droits à la vie privée.
                </li>
              </ul>
              <p>Si vous résidez dans l'UE, vous pouvez :</p>
              <ul>
                <li>
                  Demander à recevoir la confirmation que des Informations personnelles vous
                  concernant sont traitées ou non, et accéder aux Informations personnelles que
                  nous stockons vous concernant, ainsi qu'à certaines informations
                  supplémentaires
                </li>
                <li>
                  Demander à recevoir des Informations personnelles que vous nous fournissez
                  directement à titre volontaire dans un format structuré, couramment utilisé et
                  lisible par machine
                </li>
                <li>
                  Demander la rectification de vos Informations personnelles qui sont sous notre
                  contrôle
                </li>
                <li>Demander l'effacement de vos Informations personnelles</li>
                <li>Vous opposer au traitement des données personnelles par nos soins</li>
                <li>
                  Demander la limitation du traitement de vos Informations personnelles par nos
                  soins
                </li>
                <li>Déposer une plainte auprès d'une autorité de contrôle</li>
              </ul>
              <p>
                Toutefois, veuillez noter que ces droits ne sont pas absolus et qu’ils peuvent être
                soumis à nos propres intérêts légitimes ou exigences réglementaires. Si vous avez des
                questions d'ordre général sur les Informations personnelles que nous recueillons et
                sur la manière dont nous les utilisons, veuillez nous contacter de la manière indiquée
                ci-dessous.
              </p>
              <p>
                Dans le cadre de la mise à disposition des Services à nos utilisateurs, nous pouvons
                transférer des informations à des entités affiliées ou à d'autres tiers au-delà des
                frontières de votre pays ou juridiction, vers d'autres pays ou juridictions dans le
                monde. En utilisant les Services, vous consentez au transfert de vos informations en
                dehors de l'EEE.
              </p>
              <p>
                Si vous êtes situé(e) dans l'EEE, vos Informations personnelles ne pourront être
                transférées vers des lieux situés en dehors de l'EEE que si nous sommes convaincus
                qu’un niveau de protection adéquat ou comparable est en place pour protéger les
                Informations personnelles. Nous prendrons des mesures raisonnables pour nous
                assurer que nous avons des accords contractuels appropriés avec nos tiers pour
                garantir que des garanties adéquates sont en place de sorte que les risques
                d'utilisation illégale, de modification, de suppression, de perte ou de vol de vos
                Informations personnelles soient minimisés, et que ces tiers agissent à tout moment
                en conformité avec les lois applicables.
              </p>
              <h5>Droits CCPA relatifs à vos informations</h5>
              <p>
              Si vous êtes un résident de Californie utilisant les Services, la loi californienne sur la
              protection de la vie privée des consommateurs (la « loi CCPA ») peut vous donner le
              droit de demander l'accès à vos informations et leur suppression.
              </p>
              <p>
              Pour exercer votre droit d'accès à vos informations et à leur suppression, veuillez nous
              contacter de la manière indiquée ci-après.
              </p>
              <p>
              Les utilisateurs des Services qui sont résidents de Californie et âgés de moins de 18
              ans peuvent demander et obtenir le retrait de tout contenu qu'ils ont publié en nous
              envoyant un e-mail à l’adresse indiquée ci-après dans la rubrique « Nous contacter ».
              Toute demande en ce sens devra porter la mention « California Removal Request »
              dans votre e-mail. Toute demande devra fournir une description du contenu que vous
              souhaitez supprimer et des informations raisonnablement suffisantes pour nous
              permettre de localiser ce contenu. Nous rejetons toutes les demandes « California
              Removal Request » qui ne sont pas marquées ou envoyées correctement, et nous
              pourrions ne pas être en mesure de répondre si vous ne fournissez pas les
              informations adéquates. Veuillez noter que votre demande ne garantit pas un retrait
              complet ou exhaustif du contenu concerné. Par exemple, les documents que vous
              avez publiés peuvent être republiés par un autre utilisateur ou un tiers.
              </p>
              <p>&nbsp</p>
              <h3>Modifications ou mises à jour de la Politique de confidentialité</h3>
              <p>&nbsp</p>
              <p>
                Nous pouvons réviser cette politique de confidentialité à chaque fois que nécessaire,
                à notre seule discrétion, et la version la plus récente sera toujours affichée sur notre
                site web (comme indiqué dans la rubrique « Dernière révision »). Nous vous
                encourageons à consulter régulièrement la présente Politique de confidentialité pour
                prendre connaissance de toute modification. En cas de changements importants,
                nous publierons sur notre site web un avis pour annoncer ces changements. Si vous
                continuez à utiliser les Services après la notification de modifications sur notre site
                web, cela constituera votre reconnaissance de, et votre consentement à, ces
                modifications de la Politique de confidentialité et votre accord à être lié(e) par les
                conditions de ces modifications.
              </p>
              <p>&nbsp</p>
              <h5>Nous contacter</h5>
              <p>&nbsp</p>
              <p>
              Si vous avez des questions d'ordre général sur les Services ou les informations que
              nous recueillons à votre sujet, ou sur la manière dont nous les utilisons,              
                <span style="text-decoration:underline;">
                  <a>
                    nous contacter
                  </a>
                </span>
              </p>
              """,
                noir: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
