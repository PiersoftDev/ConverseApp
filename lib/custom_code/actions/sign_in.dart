// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> signIn(
  BuildContext context,
  String email,
  String password,
) async {
  bool isSignedIn = false;
  try {
    final result = await Amplify.Auth.signIn(
      username: email,
      password: password,
    );

    setState(() {
      isSignedIn = res.isSignedIn;
    });
  } on AuthException catch (e) {
    safePrint(e.message);
  }
}
