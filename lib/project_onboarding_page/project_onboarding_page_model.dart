import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProjectOnboardingPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ProjectNameTextField widget.
  TextEditingController? projectNameTextFieldController;
  String? Function(BuildContext, String?)?
      projectNameTextFieldControllerValidator;
  // State field(s) for RegionalOfficeTextField widget.
  TextEditingController? regionalOfficeTextFieldController;
  String? Function(BuildContext, String?)?
      regionalOfficeTextFieldControllerValidator;
  // State field(s) for Addressline1TextField widget.
  TextEditingController? addressline1TextFieldController;
  String? Function(BuildContext, String?)?
      addressline1TextFieldControllerValidator;
  // State field(s) for Addressline2TextField widget.
  TextEditingController? addressline2TextFieldController;
  String? Function(BuildContext, String?)?
      addressline2TextFieldControllerValidator;
  // State field(s) for StateTextField widget.
  TextEditingController? stateTextFieldController;
  String? Function(BuildContext, String?)? stateTextFieldControllerValidator;
  // State field(s) for ProjectContactTextField widget.
  TextEditingController? projectContactTextFieldController;
  String? Function(BuildContext, String?)?
      projectContactTextFieldControllerValidator;
  bool isMediaUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    projectNameTextFieldController?.dispose();
    regionalOfficeTextFieldController?.dispose();
    addressline1TextFieldController?.dispose();
    addressline2TextFieldController?.dispose();
    stateTextFieldController?.dispose();
    projectContactTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
