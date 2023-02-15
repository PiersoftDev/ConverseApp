import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for LoginEmailAddress widget.
  TextEditingController? loginEmailAddressController;
  String? Function(BuildContext, String?)? loginEmailAddressControllerValidator;
  // State field(s) for LoginPassword widget.
  TextEditingController? loginPasswordController;
  late bool loginPasswordVisibility;
  String? Function(BuildContext, String?)? loginPasswordControllerValidator;
  // State field(s) for CreateAccountEmailAddress widget.
  TextEditingController? createAccountEmailAddressController;
  String? Function(BuildContext, String?)?
      createAccountEmailAddressControllerValidator;
  // State field(s) for CreateAccountPassword widget.
  TextEditingController? createAccountPasswordController;
  late bool createAccountPasswordVisibility;
  String? Function(BuildContext, String?)?
      createAccountPasswordControllerValidator;
  // State field(s) for ConfirmPassword widget.
  TextEditingController? confirmPasswordController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)? confirmPasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    loginPasswordVisibility = false;
    createAccountPasswordVisibility = false;
    confirmPasswordVisibility = false;
  }

  void dispose() {
    loginEmailAddressController?.dispose();
    loginPasswordController?.dispose();
    createAccountEmailAddressController?.dispose();
    createAccountPasswordController?.dispose();
    confirmPasswordController?.dispose();
  }

  /// Additional helper methods are added here.

}
