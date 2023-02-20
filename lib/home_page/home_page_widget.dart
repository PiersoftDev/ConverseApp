import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Color(0xFFF5EFE6),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5EFE6),
                        ),
                        child: Lottie.asset(
                          'assets/lottie_animations/93663-site-prep.json',
                          width: 150,
                          height: 130,
                          fit: BoxFit.cover,
                          animate: true,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 350, 250, 0),
                          child: Image.asset(
                            'assets/images/Projects_Logo_-_100X100_Projects_Logo_100X100.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.8, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: SelectionArea(
                          child: Text(
                        'Welcome to,',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Roboto',
                              color: Color(0xFF1A374D),
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                      )),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.3, 0.05),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: SelectionArea(
                          child: GradientText(
                        'Converse',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Dune',
                              color: Color(0xFF1A374D),
                              fontSize: 40,
                              useGoogleFonts: false,
                            ),
                        colors: [Color(0xFF1A374D), Color(0xFF4E4BED)],
                        gradientDirection: GradientDirection.ltr,
                        gradientType: GradientType.linear,
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                    child: Text(
                      'I\'M',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF607EAA),
                            fontSize: 24,
                          ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0.05),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('vendor_login_page');
                          },
                          text: 'Vendor',
                          icon: Icon(
                            Icons.shopping_cart_outlined,
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            width: 150,
                            height: 40,
                            color: Color(0xFF1C3879),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          showLoadingIndicator: false,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.05),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('SiteUserButton pressed ...');
                            },
                            text: 'Site User',
                            icon: Icon(
                              Icons.verified_user,
                              size: 15,
                            ),
                            options: FFButtonOptions(
                              width: 150,
                              height: 40,
                              color: Color(0xFF1C3879),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            showLoadingIndicator: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
