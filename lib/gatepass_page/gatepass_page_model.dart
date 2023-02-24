import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GatepassPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DriverName widget.
  TextEditingController? driverNameController;
  String? Function(BuildContext, String?)? driverNameControllerValidator;
  String? _driverNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DriverPhoneNumber widget.
  TextEditingController? driverPhoneNumberController;
  String? Function(BuildContext, String?)? driverPhoneNumberControllerValidator;
  String? _driverPhoneNumberControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  bool isMediaUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isMediaUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (createGatepass)] action in Button widget.
  ApiCallResponse? createGatepassResponse;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    driverNameControllerValidator = _driverNameControllerValidator;
    driverPhoneNumberControllerValidator =
        _driverPhoneNumberControllerValidator;
  }

  void dispose() {
    driverNameController?.dispose();
    driverPhoneNumberController?.dispose();
  }

  /// Additional helper methods are added here.

}
