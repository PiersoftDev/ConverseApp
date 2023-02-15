// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

Future<void> signIn(
  BuildContext context,
  String email,
  String password,
) async {

  try {
    final result = await Amplify.Auth.signIn(
      username: email,
      password: password,
    );

    
  } on AuthException catch (e) {
    safePrint(e.message);
  }
}
