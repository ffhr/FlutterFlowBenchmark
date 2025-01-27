import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_counter_button_model.dart';
export 'widget_counter_button_model.dart';

class WidgetCounterButtonWidget extends StatefulWidget {
  const WidgetCounterButtonWidget({
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
  State<WidgetCounterButtonWidget> createState() =>
      _WidgetCounterButtonWidgetState();
}

class _WidgetCounterButtonWidgetState extends State<WidgetCounterButtonWidget> {
  late WidgetCounterButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetCounterButtonModel());

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
            height: 100.0,
            decoration: BoxDecoration(),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: 120.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                  shape: BoxShape.rectangle,
                ),
                child: FlutterFlowCountController(
                  decrementIconBuilder: (enabled) => Icon(
                    Icons.remove_rounded,
                    color: enabled
                        ? FlutterFlowTheme.of(context).secondary
                        : Color(0xC72563EB),
                    size: 24.0,
                  ),
                  incrementIconBuilder: (enabled) => Icon(
                    Icons.add_rounded,
                    color: enabled
                        ? FlutterFlowTheme.of(context).secondary
                        : Color(0xC72563EB),
                    size: 24.0,
                  ),
                  countBuilder: (count) => Text(
                    count.toString(),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Geist',
                          color: FlutterFlowTheme.of(context).secondary,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  count: _model.countControllerValue1 ??= 0,
                  updateCount: (count) =>
                      safeSetState(() => _model.countControllerValue1 = count),
                  stepSize: 1,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                ),
              ),
            ),
          ),
          Container(
            width: 300.0,
            height: 100.0,
            decoration: BoxDecoration(),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: 150.0,
                height: 64.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(18.0),
                  shape: BoxShape.rectangle,
                ),
                child: FlutterFlowCountController(
                  decrementIconBuilder: (enabled) => Icon(
                    Icons.remove_rounded,
                    color: enabled
                        ? FlutterFlowTheme.of(context).secondaryText
                        : FlutterFlowTheme.of(context).alternate,
                    size: 24.0,
                  ),
                  incrementIconBuilder: (enabled) => Icon(
                    Icons.add_rounded,
                    color: enabled
                        ? FlutterFlowTheme.of(context).primary
                        : FlutterFlowTheme.of(context).alternate,
                    size: 24.0,
                  ),
                  countBuilder: (count) => Text(
                    count.toString(),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Geist',
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  count: _model.countControllerValue2 ??= 0,
                  updateCount: (count) =>
                      safeSetState(() => _model.countControllerValue2 = count),
                  stepSize: 7,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                ),
              ),
            ),
          ),
          Container(
            width: 300.0,
            height: 100.0,
            decoration: BoxDecoration(),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Material(
                color: Colors.transparent,
                child: Container(
                  width: 140.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).tertiary,
                        FlutterFlowTheme.of(context).primary
                      ],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(1.0, 0.87),
                      end: AlignmentDirectional(-1.0, -0.87),
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).info,
                      width: 1.0,
                    ),
                  ),
                  child: FlutterFlowCountController(
                    decrementIconBuilder: (enabled) => Icon(
                      Icons.remove_rounded,
                      color: enabled
                          ? FlutterFlowTheme.of(context).info
                          : FlutterFlowTheme.of(context).alternate,
                      size: 20.0,
                    ),
                    incrementIconBuilder: (enabled) => Icon(
                      Icons.add_rounded,
                      color: enabled
                          ? FlutterFlowTheme.of(context).info
                          : FlutterFlowTheme.of(context).alternate,
                      size: 20.0,
                    ),
                    countBuilder: (count) => Text(
                      count.toString(),
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Geist',
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                    count: _model.countControllerValue3 ??= 0,
                    updateCount: (count) => safeSetState(
                        () => _model.countControllerValue3 = count),
                    stepSize: 1,
                    maximum: 10,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  ),
                ),
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
