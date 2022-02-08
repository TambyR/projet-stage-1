// ignore_for_file: prefer_typing_uninitialized_variables

class AppUser {
  var uid;

  AppUser({
    this.uid,
  });
}

class AppUserData {
  var uid;
  var pseudo;
  var email;
  var nom;
  var prenom;
  var isPremium;

  AppUserData(
      {this.uid,
      this.pseudo,
      this.email,
      this.nom,
      this.prenom,
      this.isPremium});
}
