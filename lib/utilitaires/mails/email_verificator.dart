// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/services.dart';

Future<bool> emailVerificator(String email) async {
  bool result = false;
  List<String> listeEmail = [];
  await loadMail(listeEmail);
  if (EmailValidator.validate(email) == false) {
    result = false;
  } else {
    for (var i = 0; i < listeEmail.length; i++) {
      if (email.contains(listeEmail[i])) {
        result = true;
      }
    }
  }
  return result;
}

loadMail(List<String> liste) async {
  await rootBundle.loadString('document/email_domain.txt').then((q) {
    for (String i in LineSplitter().convert(q)) {
      liste.add(i);
    }
  });
  return liste;
}
