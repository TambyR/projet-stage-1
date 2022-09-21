// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;

Future sendEmail(String email) async {
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  final response = await http.post(url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'service_id': 'XXXXXXXXXXXXXXX',
        'template_id': 'XXXXXXXXXXXXXXX',
        'user_id': 'XXXXXXXXXXXXXXX',
        'template_params': {
          'from_name': '',
          'to_email': email,
          'message': '',
        }
      }));
  print(response.body);
  return response.statusCode;
}
