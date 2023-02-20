import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class SiteUserEditProfilePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for FirstNameTextField widget.
  TextEditingController? firstNameTextFieldController;
  String? Function(BuildContext, String?)?
      firstNameTextFieldControllerValidator;
  // State field(s) for LastNameTextField widget.
  TextEditingController? lastNameTextFieldController;
  String? Function(BuildContext, String?)? lastNameTextFieldControllerValidator;
  // State field(s) for DisplayNameTextField widget.
  TextEditingController? displayNameTextFieldController;
  String? Function(BuildContext, String?)?
      displayNameTextFieldControllerValidator;
  // State field(s) for PhoneNumberTextField widget.
  TextEditingController? phoneNumberTextFieldController;
  String? Function(BuildContext, String?)?
      phoneNumberTextFieldControllerValidator;
  // State field(s) for BloodGroupTextField widget.
  TextEditingController? bloodGroupTextFieldController;
  String? Function(BuildContext, String?)?
      bloodGroupTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    firstNameTextFieldController?.dispose();
    lastNameTextFieldController?.dispose();
    displayNameTextFieldController?.dispose();
    phoneNumberTextFieldController?.dispose();
    bloodGroupTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
