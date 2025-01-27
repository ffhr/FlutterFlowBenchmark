import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_icon_button_model.dart';
export 'widget_icon_button_model.dart';

class WidgetIconButtonWidget extends StatefulWidget {
  const WidgetIconButtonWidget({
    super.key,
    this.title,
    this.description,
    this.itemCount,
    this.showDivider,
  });

  final String? title;
  final String? description;
  final int? itemCount;
  final bool? showDivider;

  @override
  State<WidgetIconButtonWidget> createState() => _WidgetIconButtonWidgetState();
}

class _WidgetIconButtonWidgetState extends State<WidgetIconButtonWidget> {
  late WidgetIconButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetIconButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 500.0,
            height: 300.0,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderRadius: 10.0,
                        buttonSize: 40.0,
                        fillColor: FlutterFlowTheme.of(context).tertiary,
                        icon: Icon(
                          Icons.help,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: 20.0,
                        borderWidth: 2.0,
                        buttonSize: 50.0,
                        fillColor: FlutterFlowTheme.of(context).secondary,
                        icon: Icon(
                          Icons.headset,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: 100.0,
                        borderWidth: 1.0,
                        buttonSize: 70.0,
                        fillColor: FlutterFlowTheme.of(context).alternate,
                        icon: Icon(
                          Icons.hotel,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 40.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'qjhwco7w' /* Tap the button below to see a ... */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Geist',
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Stack(
                    children: [
                      if (_model.buttonDisabled)
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 8.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              fillColor: Color(0x8618181B),
                              icon: Icon(
                                Icons.download_sharp,
                                color: Colors.white,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                _model.buttonDisabled = !_model.buttonDisabled;
                                safeSetState(() {});
                              },
                            ),
                          ],
                        ),
                      if (!_model.buttonDisabled)
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 8.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context).primary,
                              icon: Icon(
                                Icons.download_sharp,
                                color: Colors.white,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                _model.buttonDisabled = !_model.buttonDisabled;
                                safeSetState(() {});
                              },
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
