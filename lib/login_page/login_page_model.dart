import '../backend/api_requests/api_calls.dart';
import '../components/api_error_component_widget.dart';
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
  String? countryCodeDropDownValue;
  // State field(s) for WhatsappPhoneNumberTextField widget.
  TextEditingController? whatsappPhoneNumberTextFieldController;
  String? Function(BuildContext, String?)?
      whatsappPhoneNumberTextFieldControllerValidator;
  // State field(s) for LoginPassword widget.
  TextEditingController? loginPasswordController;
  late bool loginPasswordVisibility;
  String? Function(BuildContext, String?)? loginPasswordControllerValidator;
  // State field(s) for SIgnUpPersonaDropDown widget.
  String? sIgnUpPersonaDropDownValue;
  // State field(s) for SingUpCountryCodeDropDown widget.
  String? singUpCountryCodeDropDownValue;
  // State field(s) for SIgnUpWhatsappTextField widget.
  TextEditingController? sIgnUpWhatsappTextFieldController;
  String? Function(BuildContext, String?)?
      sIgnUpWhatsappTextFieldControllerValidator;
  // State field(s) for CreateAccountPassword widget.
  TextEditingController? createAccountPasswordController;
  late bool createAccountPasswordVisibility;
  String? Function(BuildContext, String?)?
      createAccountPasswordControllerValidator;
  // State field(s) for ConfirmPassword widget.
  TextEditingController? confirmPasswordController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)? confirmPasswordControllerValidator;
  // Stores action output result for [Backend Call - API (createUser)] action in CreateProfileButton widget.
  ApiCallResponse? apiResult1q7;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    loginPasswordVisibility = false;
    createAccountPasswordVisibility = false;
    confirmPasswordVisibility = false;
  }

  void dispose() {
    whatsappPhoneNumberTextFieldController?.dispose();
    loginPasswordController?.dispose();
    sIgnUpWhatsappTextFieldController?.dispose();
    createAccountPasswordController?.dispose();
    confirmPasswordController?.dispose();
  }

  /// Additional helper methods are added here.

}
