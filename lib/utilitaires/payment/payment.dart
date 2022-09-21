import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

//fonctionnel mais inadapté
launchPayment() async {
  await launch('https://buy.stripe.com/XXXXXXXXXXXXXXX');
}

//adapté mais pas fonctionnel, dispo uniquement sur mobile (flutter_stripe version 2.3.0)
Future paymentStripe() async {
  Map<String, dynamic>? paymentIntentData;

  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet(
      parameters: PresentPaymentSheetParameters(
        clientSecret: paymentIntentData!['client_secret'],
        confirmPayment: true,
      ),
    );
  }

  //publishable key
  Stripe.publishableKey = 'pk_test_XXXXXXXXXXXXXXX';
  paymentIntentData = await createPaymentIntent('50', 'EUR');
  await Stripe.instance.initPaymentSheet(
    paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret: paymentIntentData!['client_secret'],
      applePay: false,
      googlePay: false,
      merchantCountryCode: 'FR',
      merchantDisplayName: 'Nooks',
    ),
  );

  displayPaymentSheet();
}

createPaymentIntent(String amount, String currency) async {
  Map<String, dynamic> body = {
    'amount': calculateAmount(amount),
    'currency': currency,
    'payment_method_types[]': 'card',
  };
  final response = await http.post(
    Uri.parse('https://api.stripe.com/api/v1/payment_intents'),
    body: body,
    headers: {
      'Authorization':
          //secret key
          'Bearer sk_test_XXXXXXXXXXXXXXX',
      'Content-Type': 'application/x-www-form-urlencoded'
    },
  );
  return jsonDecode(response.body.toString());
}

calculateAmount(String amount) {
  final price = int.parse(amount) * 100;
  return price.toString();
}
