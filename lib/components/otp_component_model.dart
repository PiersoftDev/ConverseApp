import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OtpComponentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for OTP widget.
  TextEditingController? otp;
  // Stores action output result for [Backend Call - API (confirmUser)] action in OTP widget.
  ApiCallResponse? apiResultxzs;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    otp = TextEditingController();
  }

  void dispose() {
    otp?.dispose();
  }

  /// Additional helper methods are added here.

}
