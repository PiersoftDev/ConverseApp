import '../components/otp_component_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
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
  // State field(s) for CountryCodeDropDown widget.
  String? countryCodeDropDownValue1;
  // State field(s) for WhatsappPhoneNumberTextField widget.
  TextEditingController? whatsappPhoneNumberTextFieldController;
  String? Function(BuildContext, String?)?
      whatsappPhoneNumberTextFieldControllerValidator;
  // State field(s) for LoginPassword widget.
  TextEditingController? loginPasswordController;
  late bool loginPasswordVisibility;
  String? Function(BuildContext, String?)? loginPasswordControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  // State field(s) for CountryCodeDropDown widget.
  String? countryCodeDropDownValue2;
  // State field(s) for WhatsappTextField widget.
  TextEditingController? whatsappTextFieldController;
  String? Function(BuildContext, String?)? whatsappTextFieldControllerValidator;
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
    whatsappPhoneNumberTextFieldController?.dispose();
    loginPasswordController?.dispose();
    whatsappTextFieldController?.dispose();
    createAccountPasswordController?.dispose();
    confirmPasswordController?.dispose();
  }

  /// Additional helper methods are added here.

}
