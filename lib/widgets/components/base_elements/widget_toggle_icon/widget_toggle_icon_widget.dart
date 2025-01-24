import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_toggle_icon_model.dart';
export 'widget_toggle_icon_model.dart';

class WidgetToggleIconWidget extends StatefulWidget {
  const WidgetToggleIconWidget({
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
  State<WidgetToggleIconWidget> createState() => _WidgetToggleIconWidgetState();
}

class _WidgetToggleIconWidgetState extends State<WidgetToggleIconWidget> {
  late WidgetToggleIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetToggleIconModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.liked = !_model.liked;
      safeSetState(() {});
    });

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
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 500.0,
              height: 400.0,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ToggleIcon(
                        onPressed: () async {
                          safeSetState(() => _model.liked = !_model.liked);
                          _model.liked = !_model.liked;
                          safeSetState(() {});
                        },
                        value: _model.liked,
                        onIcon: Icon(
                          Icons.favorite_outlined,
                          color: FlutterFlowTheme.of(context).tertiary,
                          size: 48.0,
                        ),
                        offIcon: Icon(
                          Icons.favorite_border,
                          color: FlutterFlowTheme.of(context).tertiary,
                          size: 48.0,
                        ),
                      ),
                      ToggleIcon(
                        onPressed: () async {
                          safeSetState(() => _model.liked = !_model.liked);
                          _model.liked = !_model.liked;
                          safeSetState(() {});
                        },
                        value: _model.liked,
                        onIcon: Icon(
                          Icons.headphones_rounded,
                          color: FlutterFlowTheme.of(context).alternate,
                          size: 64.0,
                        ),
                        offIcon: Icon(
                          Icons.headphones_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 64.0,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '38t79gze' /* Local state */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Geist',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '2h98mvwy' /* toggle - local state */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Geist',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            ToggleIcon(
                              onPressed: () async {
                                safeSetState(
                                    () => _model.toggle = !_model.toggle);
                              },
                              value: _model.toggle,
                              onIcon: Icon(
                                Icons.check_box,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 25.0,
                              ),
                              offIcon: Icon(
                                Icons.check_box_outline_blank,
                                color: Colors.black,
                                size: 25.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'n7spknyk' /* Toggle value: */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Geist',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (_model.toggle)
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'bvy6gpdh' /* True */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Geist',
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                if (!_model.toggle)
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'i3mw0qgu' /* False */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Geist',
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ].divide(SizedBox(height: 24.0)),
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
