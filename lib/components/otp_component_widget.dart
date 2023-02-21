import '../backend/api_requests/api_calls.dart';
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
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: Color(0xFFF5EFE6),
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
                  inactiveColor: Color(0xFF1C3879),
                  selectedColor: Color(0xFF1C3879),
                  activeFillColor: Color(0xFF1C3879),
                  inactiveFillColor: Color(0xFF1C3879),
                  selectedFillColor: Color(0xFF1C3879),
                ),
                controller: _model.otp,
                onChanged: (_) => {},
                onCompleted: (_) async {
                  var _shouldSetState = false;
                  _model.apiResultxzs = await ConfirmUserCall.call(
                    confirmationCode: _model.otp!.text,
                    phoneNumber: FFAppState().whatsappNumber,
                    countryCode: FFAppState().countryCode,
                  );
                  _shouldSetState = true;
                  if ((_model.apiResultxzs?.succeeded ?? true)) {
                    context.pushNamed('vendor_edit_profile_page');
                  } else {
                    if (_shouldSetState) setState(() {});
                    return;
                  }

                  if (_shouldSetState) setState(() {});
                },
              ),
            ),
            if (!(_model.apiResultxzs?.succeeded ?? true))
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text(
                  getJsonField(
                    (_model.apiResultxzs?.jsonBody ?? ''),
                    r'''$.errorResponse''',
                  ).toString(),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF131010),
                      ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
