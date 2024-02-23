import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'register_model.dart';
export 'register_model.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  late RegisterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterModel());
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
              Align(
                alignment: AlignmentDirectional(0.6, -0.53),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/three.png',
                    width: 0,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/thatha_food.jpg',
                    width: 1452,
                    height: 906,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.91, -0.93),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset(
                    'assets/images/letter-f_(3).png',
                    width: 111,
                    height: 125,
                    fit: BoxFit.contain,
                    alignment: Alignment(0, 0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.9, -0.8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/three.png',
                    width: 28,
                    height: 36,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.77, -0.79),
                child: GradientText(
                  'FOOD FOR FREE',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto Slab',
                        color: Color(0xFFBFAAE4),
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                      ),
                  colors: [
                    Color(0xFFD772E1),
                    Color(0xFFA3F8FA),
                    Color(0xFF673AB7)
                  ],
                  gradientDirection: GradientDirection.ltr,
                  gradientType: GradientType.linear,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.85, 0.11),
                child: GradientText(
                  ' IF \n YOU\n CAN\'T\n FEED\n HUNDRED \n PEOPLE \n THEN JUST FEED  ONE',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Noto Serif',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 50,
                        letterSpacing: 1,
                        lineHeight: 1,
                      ),
                  colors: [],
                  gradientType: GradientType.radial,
                  radius: 1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.89, 0.77),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('signin');
                  },
                  text: 'Sign/Register',
                  options: FFButtonOptions(
                    height: 40,
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(500, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Outfit',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 35,
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
            ],
          ),
        ),
      ),
    );
  }
}
