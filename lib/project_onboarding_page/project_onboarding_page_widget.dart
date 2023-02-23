import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'project_onboarding_page_model.dart';
export 'project_onboarding_page_model.dart';

class ProjectOnboardingPageWidget extends StatefulWidget {
  const ProjectOnboardingPageWidget({Key? key}) : super(key: key);

  @override
  _ProjectOnboardingPageWidgetState createState() =>
      _ProjectOnboardingPageWidgetState();
}

class _ProjectOnboardingPageWidgetState
    extends State<ProjectOnboardingPageWidget> {
  late ProjectOnboardingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjectOnboardingPageModel());

    _model.projectNameTextFieldController ??= TextEditingController();
    _model.regionalOfficeTextFieldController ??= TextEditingController();
    _model.addressline1TextFieldController ??= TextEditingController();
    _model.addressline2TextFieldController ??= TextEditingController();
    _model.stateTextFieldController ??= TextEditingController();
    _model.projectContactTextFieldController ??= TextEditingController();
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
      backgroundColor: Color(0xFFF5EFE6),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFF5EFE6),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Text(
                          'Enter Project details',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF1C3879),
                                    fontSize: 28,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.8,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5EFE6),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Form(
                                key: _model.formKey,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 0),
                                        child: TextFormField(
                                          controller: _model
                                              .projectNameTextFieldController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText:
                                                'Enter your project title',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF4AA0EB),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF4AA0EB),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            filled: true,
                                            fillColor: Color(0xFFF5EFE6),
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 5, 5, 5),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                          maxLines: null,
                                          validator: _model
                                              .projectNameTextFieldControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 0),
                                        child: TextFormField(
                                          controller: _model
                                              .regionalOfficeTextFieldController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Regional Office',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF4AA0EB),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF4AA0EB),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            filled: true,
                                            fillColor: Color(0xFFF5EFE6),
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 5, 5, 5),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                          maxLines: null,
                                          validator: _model
                                              .regionalOfficeTextFieldControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 0),
                                        child: TextFormField(
                                          controller: _model
                                              .addressline1TextFieldController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Address line 1',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF4AA0EB),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF4AA0EB),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            filled: true,
                                            fillColor: Color(0xFFF5EFE6),
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 5, 5, 5),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                          validator: _model
                                              .addressline1TextFieldControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 0),
                                        child: TextFormField(
                                          controller: _model
                                              .addressline2TextFieldController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Address line 2',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF4AA0EB),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF4AA0EB),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            filled: true,
                                            fillColor: Color(0xFFF5EFE6),
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 5, 5, 5),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                          validator: _model
                                              .addressline2TextFieldControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 0),
                                        child: TextFormField(
                                          controller:
                                              _model.stateTextFieldController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'State',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF4AA0EB),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF4AA0EB),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            filled: true,
                                            fillColor: Color(0xFFF5EFE6),
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 5, 5, 5),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                          validator: _model
                                              .stateTextFieldControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 0),
                                        child: TextFormField(
                                          controller: _model
                                              .projectContactTextFieldController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Contact number',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF4AA0EB),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF4AA0EB),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            filled: true,
                                            fillColor: Color(0xFFF5EFE6),
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 5, 5, 5),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                          keyboardType: TextInputType.phone,
                                          validator: _model
                                              .projectContactTextFieldControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            _model.onboardProjectResponse =
                                                await OnboardProjectCall.call(
                                              projectTitle: _model
                                                  .projectNameTextFieldController
                                                  .text,
                                              regionalOffice: _model
                                                  .regionalOfficeTextFieldController
                                                  .text,
                                              addressLine1: _model
                                                  .addressline1TextFieldController
                                                  .text,
                                              addressLine2: _model
                                                  .addressline2TextFieldController
                                                  .text,
                                              state: _model
                                                  .stateTextFieldController
                                                  .text,
                                              contactNumber: _model
                                                  .projectContactTextFieldController
                                                  .text,
                                            );
                                            if ((_model.onboardProjectResponse
                                                    ?.succeeded ??
                                                true)) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Successfully onboarded project',
                                                    style: TextStyle(
                                                      color: Color(0xFF1C3879),
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      Color(0xFFF5EFE6),
                                                ),
                                              );

                                              context
                                                  .pushNamed('projects_page');
                                            }

                                            setState(() {});
                                          },
                                          text: 'Onboard Project',
                                          icon: FaIcon(
                                            FontAwesomeIcons.angellist,
                                          ),
                                          options: FFButtonOptions(
                                            width: 200,
                                            height: 40,
                                            color: Color(0xFF1C3879),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFFF5EFE6),
                                                    ),
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
