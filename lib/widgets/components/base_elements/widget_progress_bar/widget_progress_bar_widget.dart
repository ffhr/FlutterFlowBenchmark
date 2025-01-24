import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'widget_progress_bar_model.dart';
export 'widget_progress_bar_model.dart';

class WidgetProgressBarWidget extends StatefulWidget {
  const WidgetProgressBarWidget({
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
  State<WidgetProgressBarWidget> createState() =>
      _WidgetProgressBarWidgetState();
}

class _WidgetProgressBarWidgetState extends State<WidgetProgressBarWidget> {
  late WidgetProgressBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetProgressBarModel());

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
            width: 300.0,
            height: 200.0,
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: CircularPercentIndicator(
                      percent: 0.5,
                      radius: 60.0,
                      lineWidth: 16.0,
                      animation: true,
                      animateFromLastPercent: true,
                      progressColor: FlutterFlowTheme.of(context).secondary,
                      backgroundColor: FlutterFlowTheme.of(context).alternate,
                      center: Text(
                        FFLocalizations.of(context).getText(
                          'qdww2ake' /* 70% */,
                        ),
                        style: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .override(
                              fontFamily: 'Geist',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: LinearPercentIndicator(
                      percent: 0.7,
                      width: 250.0,
                      lineHeight: 24.0,
                      animation: true,
                      animateFromLastPercent: true,
                      progressColor: FlutterFlowTheme.of(context).secondary,
                      backgroundColor: FlutterFlowTheme.of(context).alternate,
                      center: Text(
                        FFLocalizations.of(context).getText(
                          '47hke2a8' /* 70% */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Geist',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                      ),
                      barRadius: Radius.circular(8.0),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ].divide(SizedBox(height: 16.0)).around(SizedBox(height: 16.0)),
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
