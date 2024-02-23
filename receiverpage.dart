import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'receiver_model.dart';
export 'receiver_model.dart';

class ReceiverWidget extends StatefulWidget {
  const ReceiverWidget({super.key});

  @override
  State<ReceiverWidget> createState() => _ReceiverWidgetState();
}

class _ReceiverWidgetState extends State<ReceiverWidget> {
  late ReceiverModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReceiverModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primary,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/hands_service_food_bowls.jpeg',
                    width: 1684,
                    height: 998,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.49, -0.25),
                child: Text(
                  'RECEIVER',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Merriweather',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        fontSize: 90,
                        fontStyle: FontStyle.italic,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.98, 0.45),
                child: Text(
                  'Whether it is freshly cooked\n food or raw grains, we’re\n all hands on deck to take \ncare of the food requirements \nfor your beneficiaries.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 50,
                        fontStyle: FontStyle.italic,
                      ),
                ),
              ),
              Opacity(
                opacity: 0.7,
                child: Align(
                  alignment: AlignmentDirectional(0.78, 0.8),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'SEARCH FOR FOOD',
                    options: FFButtonOptions(
                      height: 48,
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Outfit',
                                color: Colors.white,
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
              ),
              Align(
                alignment: AlignmentDirectional(0.97, -0.94),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('dashboard');
                  },
                  child: Icon(
                    Icons.dashboard,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    size: 60,
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
