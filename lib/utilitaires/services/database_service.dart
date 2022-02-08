// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:site_nooks_v0/utilitaires/services/app_user.dart';

class DatabaseService {
  String? prospectID;
  String? userID;

  DatabaseService({this.prospectID, this.userID});

  //Création de la collection "email", ce sont des adresses mail
  CollectionReference prospectsCollection =
      FirebaseFirestore.instance.collection("Prospects");

  //Ajouter un article dans la BDD
  Future<void> addProspect(String email) async {
    return await prospectsCollection.add({
      "Email": email,
    }).then((value) {
      // ignore: avoid_print
      print(value.id);
    });
  }

  //Création d'une collection "users"
  final CollectionReference<Map<String, dynamic>> usersCollection =
      FirebaseFirestore.instance.collection("Users");

  //Sauvegarder un utilisateurs (inscrit) dans la BDD
  Future<void> saveUser(
      String Email, String FirstName, String LastName, String Pseudo,
      {bool isPremium = false}) async {
    return await usersCollection.doc(userID).set({
      "Email": Email,
      "First Name": FirstName,
      "Last Name": LastName,
      "Pseudo": Pseudo,
      "isPremium": isPremium,
    });
  }

  //Récupération des informations d'un user via son ID
  AppUserData userFromSnapShot(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    var data = snapshot.data();
    if (data == null) throw Exception("user not found");
    return AppUserData(
      uid: userID,
      pseudo: data["Pseudo"],
      email: data["Email"],
      nom: data["First Name"],
      prenom: data["Last Name"],
      isPremium: data["isPremium"],
    );
  }

  Stream<AppUserData> get userget {
    return usersCollection.doc(userID).snapshots().map(userFromSnapShot);
  }
}
