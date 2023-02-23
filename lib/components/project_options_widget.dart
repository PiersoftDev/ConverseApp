import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'project_options_model.dart';
export 'project_options_model.dart';

class ProjectOptionsWidget extends StatefulWidget {
  const ProjectOptionsWidget({Key? key}) : super(key: key);

  @override
  _ProjectOptionsWidgetState createState() => _ProjectOptionsWidgetState();
}

class _ProjectOptionsWidgetState extends State<ProjectOptionsWidget> {
  late ProjectOptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjectOptionsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: Color(0xFFF5EFE6),
        ),
        child: GridView(
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: Container(
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF5EFE6),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: FaIcon(
                        FontAwesomeIcons.database,
                        color: Color(0xFF0F5F97),
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    SelectionArea(
                        child: Text(
                      'MDM',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF1A374D),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: InkWell(
                onTap: () async {
                  context.pushNamed('gatepass_activity_page');
                },
                child: Container(
                  width: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5EFE6),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: FaIcon(
                          FontAwesomeIcons.ticketAlt,
                          color: Color(0xFF0F5F97),
                          size: 30,
                        ),
                        showLoadingIndicator: true,
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                      SelectionArea(
                          child: Text(
                        'Gatepass',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Roboto',
                              color: Color(0xFF1A374D),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: Container(
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF5EFE6),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.emoji_people,
                        color: Color(0xFF0F5F97),
                        size: 30,
                      ),
                      onPressed: () async {
                        context.pushNamed('gatepass_activity_page');
                      },
                    ),
                    SelectionArea(
                        child: Text(
                      'Attendance',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF1A374D),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: Container(
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF5EFE6),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: FaIcon(
                        FontAwesomeIcons.weight,
                        color: Color(0xFF0F5F97),
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    SelectionArea(
                        child: Text(
                      'Weigh Bridge',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF1A374D),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: Container(
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF5EFE6),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: FaIcon(
                        FontAwesomeIcons.handshake,
                        color: Color(0xFF0F5F97),
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    SelectionArea(
                        child: Text(
                      'Vendor 360',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF1A374D),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: Container(
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF5EFE6),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.storefront,
                        color: Color(0xFF0F5F97),
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    SelectionArea(
                        child: Text(
                      'Store 360',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF1A374D),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: Container(
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF5EFE6),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: FaIcon(
                        FontAwesomeIcons.questionCircle,
                        color: Color(0xFF0F5F97),
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    SelectionArea(
                        child: Text(
                      'RFQ',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF1A374D),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: Container(
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF5EFE6),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: FaIcon(
                        FontAwesomeIcons.fileInvoiceDollar,
                        color: Color(0xFF0F5F97),
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    SelectionArea(
                        child: Text(
                      'eInvoice',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF1A374D),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: Container(
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF5EFE6),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.assignment_return,
                        color: Color(0xFF0F5F97),
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    SelectionArea(
                        child: Text(
                      'PReturns',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF1A374D),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: Container(
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF5EFE6),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: FaIcon(
                        FontAwesomeIcons.fileContract,
                        color: Color(0xFF0F5F97),
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    SelectionArea(
                        child: Text(
                      'Sub Con',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF1A374D),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: Container(
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF5EFE6),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.more_time,
                        color: Color(0xFF0F5F97),
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    SelectionArea(
                        child: Text(
                      'MobiTime',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF1A374D),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: Container(
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF5EFE6),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.receipt_long_outlined,
                        color: Color(0xFF0F5F97),
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    SelectionArea(
                        child: Text(
                      'Reports',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF1A374D),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: Container(
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF5EFE6),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: FaIcon(
                        FontAwesomeIcons.camera,
                        color: Color(0xFF0F5F97),
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    SelectionArea(
                        child: Text(
                      'Surveillance',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF1A374D),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: Container(
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFF5EFE6),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: FaIcon(
                        FontAwesomeIcons.solidImages,
                        color: Color(0xFF0F5F97),
                        size: 30,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                    SelectionArea(
                        child: Text(
                      'Gallery',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF1A374D),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
