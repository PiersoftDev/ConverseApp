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
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    _model.whatsappPhoneNumberTextFieldController ??= TextEditingController();
    _model.loginPasswordController ??= TextEditingController();
    _model.sIgnUpWhatsappTextFieldController ??= TextEditingController();
    _model.createAccountPasswordController ??= TextEditingController();
    _model.confirmPasswordController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFF5EFE6),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5EFE6),
                  ),
                  child: Lottie.asset(
                    'assets/lottie_animations/107800-login-leady.json',
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    fit: BoxFit.contain,
                    animate: true,
                  ),
                ),
                Expanded(
                  child: DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          isScrollable: true,
                          labelColor: Color(0xFF2351A3),
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                          indicatorColor: Color(0xFFDC4422),
                          tabs: [
                            Tab(
                              text: 'Sign In',
                            ),
                            Tab(
                              text: 'Sign Up',
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Form(
                                key: _model.formKey2,
                                autovalidateMode: AutovalidateMode.always,
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF5EFE6),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  30, 30, 30, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 55,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF5EFE6),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Color(0xFF4AA0EB),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 0, 0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    initialOption: _model
                                                            .countryCodeDropDownValue ??=
                                                        '+91',
                                                    options: ['+91', '+1'],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .countryCodeDropDownValue =
                                                            val),
                                                    width: 80,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF57636C),
                                                          fontSize: 14,
                                                        ),
                                                    fillColor:
                                                        Color(0xFFF5EFE6),
                                                    elevation: 2,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 5, 0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .whatsappPhoneNumberTextFieldController,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'Enter Whatsapp phone number',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2,
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        errorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    0, 0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                      keyboardType:
                                                          TextInputType.phone,
                                                      validator: _model
                                                          .whatsappPhoneNumberTextFieldControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  30, 12, 30, 30),
                                          child: TextFormField(
                                            controller:
                                                _model.loginPasswordController,
                                            obscureText:
                                                !_model.loginPasswordVisibility,
                                            decoration: InputDecoration(
                                              hintText: 'Password',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF4AA0EB),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF4AA0EB),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              filled: true,
                                              fillColor: Color(0xFFF5EFE6),
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(20, 20, 20, 20),
                                              suffixIcon: InkWell(
                                                onTap: () => setState(
                                                  () => _model
                                                          .loginPasswordVisibility =
                                                      !_model
                                                          .loginPasswordVisibility,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  _model.loginPasswordVisibility
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: Color(0xFFDC4422),
                                                  size: 22,
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF2351A3),
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            validator: _model
                                                .loginPasswordControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            _model.userSignInResult =
                                                await SignInUserCall.call(
                                              countryCode: _model
                                                  .countryCodeDropDownValue,
                                              phoneNumber: _model
                                                  .whatsappPhoneNumberTextFieldController
                                                  .text,
                                              password: _model
                                                  .loginPasswordController.text,
                                            );
                                            if ((_model.userSignInResult
                                                    ?.succeeded ??
                                                true)) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Successfully logged in',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 3000),
                                                  backgroundColor:
                                                      Color(0x00000000),
                                                ),
                                              );

                                              context
                                                  .pushNamed('projects_page');
                                            }

                                            setState(() {});
                                          },
                                          text: 'Login',
                                          icon: Icon(
                                            Icons.login,
                                            size: 20,
                                          ),
                                          options: FFButtonOptions(
                                            width: 230,
                                            height: 50,
                                            color: Color(0xFF1C3879),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            elevation: 3,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 20, 0, 0),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print(
                                                  'Button-ForgotPassword pressed ...');
                                            },
                                            text: 'Forgot Password?',
                                            options: FFButtonOptions(
                                              width: 170,
                                              height: 40,
                                              color: Color(0x0039D2C0),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .subtitle1
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: Color(0xFF224FA2),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                              elevation: 0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Form(
                                key: _model.formKey1,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF5EFE6),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  30, 30, 30, 5),
                                          child: FlutterFlowDropDown<String>(
                                            options: ['Vendor', 'Site User'],
                                            optionLabels: [
                                              'Vendor',
                                              'Site User'
                                            ],
                                            onChanged: (val) => setState(() =>
                                                _model.sIgnUpPersonaDropDownValue =
                                                    val),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.9,
                                            height: 50,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Color(0xFF57636C),
                                                    ),
                                            hintText: 'I\'M',
                                            fillColor: Color(0xFFF5EFE6),
                                            elevation: 2,
                                            borderColor: Color(0xFF4AA0EB),
                                            borderWidth: 0,
                                            borderRadius: 8,
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 10, 10, 10),
                                            hidesUnderline: true,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  30, 12, 30, 0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 55,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF5EFE6),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Color(0xFF4AA0EB),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 0, 0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    initialOption: _model
                                                            .singUpCountryCodeDropDownValue ??=
                                                        '+91',
                                                    options: ['+91', '+1'],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .singUpCountryCodeDropDownValue =
                                                            val),
                                                    width: 80,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF57636C),
                                                          fontSize: 14,
                                                        ),
                                                    fillColor:
                                                        Color(0xFFF5EFE6),
                                                    elevation: 2,
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderWidth: 0,
                                                    borderRadius: 0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: TextFormField(
                                                    controller: _model
                                                        .sIgnUpWhatsappTextFieldController,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          'Enter Whatsapp phone number',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2,
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      errorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      focusedErrorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 0, 0),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                    keyboardType:
                                                        TextInputType.phone,
                                                    validator: _model
                                                        .sIgnUpWhatsappTextFieldControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  30, 12, 30, 5),
                                          child: TextFormField(
                                            controller: _model
                                                .createAccountPasswordController,
                                            obscureText: !_model
                                                .createAccountPasswordVisibility,
                                            decoration: InputDecoration(
                                              hintText: 'Password',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF4AA0EB),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF4AA0EB),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              filled: true,
                                              fillColor: Color(0xFFF5EFE6),
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(20, 20, 20, 20),
                                              suffixIcon: InkWell(
                                                onTap: () => setState(
                                                  () => _model
                                                          .createAccountPasswordVisibility =
                                                      !_model
                                                          .createAccountPasswordVisibility,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  _model.createAccountPasswordVisibility
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: Color(0xFFDC4422),
                                                  size: 22,
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF2351A3),
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            validator: _model
                                                .createAccountPasswordControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  30, 12, 30, 5),
                                          child: TextFormField(
                                            controller: _model
                                                .confirmPasswordController,
                                            obscureText: !_model
                                                .confirmPasswordVisibility,
                                            decoration: InputDecoration(
                                              hintText: 'Confirm Password',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF4AA0EB),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF4AA0EB),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              filled: true,
                                              fillColor: Color(0xFFF5EFE6),
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(20, 20, 20, 20),
                                              suffixIcon: InkWell(
                                                onTap: () => setState(
                                                  () => _model
                                                          .confirmPasswordVisibility =
                                                      !_model
                                                          .confirmPasswordVisibility,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  _model.confirmPasswordVisibility
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: Color(0xFFDC4422),
                                                  size: 22,
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF2351A3),
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            validator: _model
                                                .confirmPasswordControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 20, 0, 0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              if (_model.formKey1
                                                          .currentState ==
                                                      null ||
                                                  !_model.formKey1.currentState!
                                                      .validate()) {
                                                return;
                                              }
                                              setState(() {
                                                FFAppState().persona = _model
                                                    .sIgnUpPersonaDropDownValue!;
                                                FFAppState().countryCode = _model
                                                    .singUpCountryCodeDropDownValue!;
                                                FFAppState().whatsappNumber = _model
                                                    .sIgnUpWhatsappTextFieldController
                                                    .text;
                                              });
                                              _model.apiResult1q7 =
                                                  await CreateUserCall.call(
                                                persona: _model
                                                    .sIgnUpPersonaDropDownValue,
                                                countryCode: _model
                                                    .singUpCountryCodeDropDownValue,
                                                whatsappNumber: _model
                                                    .sIgnUpWhatsappTextFieldController
                                                    .text,
                                                password: _model
                                                    .createAccountPasswordController
                                                    .text,
                                              );
                                              if ((_model.apiResult1q7
                                                      ?.succeeded ??
                                                  true)) {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return Padding(
                                                      padding:
                                                          MediaQuery.of(context)
                                                              .viewInsets,
                                                      child: Container(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.4,
                                                        child:
                                                            OtpComponentWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              } else {
                                                setState(() {
                                                  FFAppState().apiError =
                                                      getJsonField(
                                                    (_model.apiResult1q7
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.errorResponse''',
                                                  ).toString();
                                                });
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return Padding(
                                                      padding:
                                                          MediaQuery.of(context)
                                                              .viewInsets,
                                                      child: Container(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.3,
                                                        child:
                                                            ApiErrorComponentWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              }

                                              setState(() {});
                                            },
                                            text: 'Create Profile',
                                            icon: Icon(
                                              Icons.person_add,
                                              size: 15,
                                            ),
                                            options: FFButtonOptions(
                                              width: 230,
                                              height: 50,
                                              color: Color(0xFF1C3879),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                              elevation: 3,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
