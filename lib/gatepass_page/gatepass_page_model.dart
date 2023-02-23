import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GatepassPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DriverName widget.
  TextEditingController? driverNameController;
  String? Function(BuildContext, String?)? driverNameControllerValidator;
  // State field(s) for DriverPhoneNumber widget.
  TextEditingController? driverPhoneNumberController;
  String? Function(BuildContext, String?)? driverPhoneNumberControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  // State field(s) for vehicleNumber widget.
  TextEditingController? vehicleNumberController;
  String? Function(BuildContext, String?)? vehicleNumberControllerValidator;
  // State field(s) for poNumber widget.
  TextEditingController? poNumberController;
  String? Function(BuildContext, String?)? poNumberControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    driverNameController?.dispose();
    driverPhoneNumberController?.dispose();
    vehicleNumberController?.dispose();
    poNumberController?.dispose();
  }

  /// Additional helper methods are added here.

}
