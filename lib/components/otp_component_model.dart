import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OtpComponentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for OTP widget.
  TextEditingController? otp;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    otp = TextEditingController();
  }

  void dispose() {
    otp?.dispose();
  }

  /// Additional helper methods are added here.

}
