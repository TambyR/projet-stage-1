// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:mailto/mailto.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

sendEmail({
  required String email,
}) async {
  var serviceID = "service_hlvqstp";
  var templateID = "template_7b5up1p";
  var userID = "user_QM3wkAaxrgUZubUjwlv0J";

  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  final response = await http.post(
    url,
    headers: {
      "Content-Type": "application/json",
    },
    body: json.encode(
      {
        "service_id": serviceID,
        "template_id": templateID,
        "user_id": userID,
        "template_param": {
          "to_email": email,
        }
      },
    ),
  );
  print(response.body);
  return response.statusCode;
}

sendEmailBis({
  required String email,
}) async {
  final mailto = Mailto(
    to: [
      email,
    ],
    subject: "Inscription à la NewsLetter",
    body: "Bonjour",
  );

  final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 3000);
  String renderHtml(Mailto mailto) =>
      '''<html><head><title>mailto example</title></head><body><a href="$mailto">Open mail client</a></body></html>''';
  await for (HttpRequest request in server) {
    request.response
      ..statusCode = HttpStatus.ok
      ..headers.contentType = ContentType.html
      ..write(renderHtml(mailto));
    await request.response.close();
  }
}

sendEmailV3({
  required String email,
}) async {
  String username = 'adressemail';
  String password = 'motdepasse';

  final smtpServer = yahoo(username, password);

  // Create our message.
  final message = Message()
    ..from = Address(username, 'Tamby')
    ..recipients.add(email)
    ..subject = "Inscription Newsletter"
    ..text = "Bonjour";

  try {
    final sendReport = await send(message, smtpServer);
    print('Message sent: ' + sendReport.toString());
  } on MailerException catch (e) {
    print('Message not sent.');
    for (var p in e.problems) {
      print('Problem: ${p.code}: ${p.msg}');
    }
  }

  var connection = PersistentConnection(smtpServer);

  await connection.send(message);

  await connection.close();
}
