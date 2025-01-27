import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_draggable_model.dart';
export 'widget_draggable_model.dart';

class WidgetDraggableWidget extends StatefulWidget {
  const WidgetDraggableWidget({
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
  State<WidgetDraggableWidget> createState() => _WidgetDraggableWidgetState();
}

class _WidgetDraggableWidgetState extends State<WidgetDraggableWidget> {
  late WidgetDraggableModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetDraggableModel());

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
            height: 500.0,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                  child: Text(
                    valueOrDefault<String>(
                      _model.dragStatus,
                      'Waiting…',
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Geist',
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DragTarget<String>(
                        onAcceptWithDetails: (details) async {
                          _model.dragStatus = 'Dropped!';
                          safeSetState(() {});

                          safeSetState(() {});
                        },
                        onWillAcceptWithDetails: (details) {
                          (() async {
                            _model.dragStatus = 'Entered';
                            safeSetState(() {});

                            safeSetState(() {});
                          })();
                          return true;
                        },
                        onLeave: (data) async {
                          _model.dragStatus = 'Exited';
                          safeSetState(() {});

                          safeSetState(() {});
                        },
                        builder: (context, _, __) {
                          return Container(
                            width: 250.0,
                            height: 200.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiary,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 3.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'y6vcpb42' /* Drop Me Here */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Geist',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Draggable<String>(
                  data: 'Hey',
                  feedback: Material(
                    type: MaterialType.transparency,
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'hatol4ka' /* Drag Me */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Geist',
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'hatol4ka' /* Drag Me */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Geist',
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
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
