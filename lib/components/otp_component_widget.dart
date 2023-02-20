import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'otp_component_model.dart';
export 'otp_component_model.dart';

class OtpComponentWidget extends StatefulWidget {
  const OtpComponentWidget({Key? key}) : super(key: key);

  @override
  _OtpComponentWidgetState createState() => _OtpComponentWidgetState();
}

class _OtpComponentWidgetState extends State<OtpComponentWidget> {
  late OtpComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 270,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color(0x3B1D2429),
            offset: Offset(0, -3),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Text(
                'Enter OTP sent to phone number',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF2351A3),
                      fontSize: 20,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: PinCodeTextField(
                appContext: context,
                length: 6,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF2351A3),
                    ),
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                enableActiveFill: false,
                autoFocus: true,
                showCursor: true,
                cursorColor: Color(0xFF2351A3),
                obscureText: false,
                hintCharacter: '*',
                pinTheme: PinTheme(
                  fieldHeight: 40,
                  fieldWidth: 40,
                  borderWidth: 2,
                  borderRadius: BorderRadius.circular(12),
                  shape: PinCodeFieldShape.box,
                  activeColor: Color(0xFF1C3879),
                  inactiveColor: FlutterFlowTheme.of(context).primaryBackground,
                  selectedColor: Color(0x5B57636C),
                  activeFillColor: Color(0xFF1C3879),
                  inactiveFillColor:
                      FlutterFlowTheme.of(context).primaryBackground,
                  selectedFillColor: Color(0x5B57636C),
                ),
                controller: _model.pinCodeController,
                onChanged: (_) => {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
