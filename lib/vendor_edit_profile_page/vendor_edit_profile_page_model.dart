import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class VendorEditProfilePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for VendorDisplayName widget.
  TextEditingController? vendorDisplayNameController;
  String? Function(BuildContext, String?)? vendorDisplayNameControllerValidator;
  // State field(s) for VendorEmailIdTextField widget.
  TextEditingController? vendorEmailIdTextFieldController;
  String? Function(BuildContext, String?)?
      vendorEmailIdTextFieldControllerValidator;
  // State field(s) for GSTTextField widget.
  TextEditingController? gSTTextFieldController;
  String? Function(BuildContext, String?)? gSTTextFieldControllerValidator;
  // State field(s) for AadhaarTextField widget.
  TextEditingController? aadhaarTextFieldController;
  String? Function(BuildContext, String?)? aadhaarTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    vendorDisplayNameController?.dispose();
    vendorEmailIdTextFieldController?.dispose();
    gSTTextFieldController?.dispose();
    aadhaarTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
