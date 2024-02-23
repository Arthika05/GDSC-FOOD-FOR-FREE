import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'homepage_model.dart';
export 'homepage_model.dart';

class HomepageWidget extends StatefulWidget {
  const HomepageWidget({super.key});

  @override
  State<HomepageWidget> createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget> {
  late HomepageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('dashboard');
    });

    _model.textController ??=
        TextEditingController(text: '       Find your needs');
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/mwmx0_600',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/desktop-wallpaper-poor-hand-background-poor-people.jpg',
                    width: 1445,
                    height: 1002,
                    fit: BoxFit.fill,
                    alignment: Alignment(0, -1),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.86, -0.87),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/letter-f_(3).png',
                    width: 155,
                    height: 173,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.86, -0.67),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/three.png',
                    width: 41,
                    height: 45,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.68, -0.63),
                child: GradientText(
                  'FOOD FOR FREE',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto Slab',
                        color: Color(0xFFA49BEA),
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.italic,
                      ),
                  colors: [Color(0xFFEAA3EA), Color(0xFFA3F8FA)],
                  gradientDirection: GradientDirection.ltr,
                  gradientType: GradientType.linear,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.02, -0.34),
                child: Text(
                  'You Share We Care',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Noto Serif',
                        color: FlutterFlowTheme.of(context).alternate,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.49, -0.72),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('dashboard');
                  },
                  text: 'DASHBOARD',
                  options: FFButtonOptions(
                    height: 40,
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Outfit',
                          color: Colors.white,
                          fontSize: 30,
                        ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.69, -0.76),
                child: Icon(
                  Icons.person_outline,
                  color: FlutterFlowTheme.of(context).alternate,
                  size: 60,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.79, -0.76),
                child: Icon(
                  Icons.call,
                  color: FlutterFlowTheme.of(context).alternate,
                  size: 60,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.93, -0.76),
                child: Icon(
                  Icons.notes_sharp,
                  color: FlutterFlowTheme.of(context).alternate,
                  size: 60,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.16),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelStyle: FlutterFlowTheme.of(context).labelMedium,
                      hintStyle: FlutterFlowTheme.of(context).labelMedium,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).alternate,
                          fontSize: 35,
                        ),
                    textAlign: TextAlign.justify,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.9, 0.08),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'DONATE',
                  options: FFButtonOptions(
                    height: 40,
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Outfit',
                          color: Colors.white,
                          fontSize: 25,
                        ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.9, 0.48),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('ABOUT');
                  },
                  text: 'ABOUT US',
                  options: FFButtonOptions(
                    height: 40,
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Outfit',
                          color: Colors.white,
                          fontSize: 25,
                        ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.9, 0.28),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'PARTNERSHIP WITH US',
                  options: FFButtonOptions(
                    height: 40,
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Outfit',
                          color: Colors.white,
                          fontSize: 25,
                        ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.54, -0.16),
                child: Icon(
                  Icons.search_sharp,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 50,
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Align(
                  alignment: AlignmentDirectional(0.97, 0.71),
                  child: GradientText(
                    'Z\nE\nR\nO\nH\nU\nN\nG\nE\nR',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color: Color(0xFFEAA3EA),
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                    colors: [Color(0xFFEAA3EA), Color(0xFFA3E8E8)],
                    gradientType: GradientType.radial,
                    radius: 1,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.48, -0.31),
                child: Icon(
                  Icons.connect_without_contact_outlined,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 60,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
