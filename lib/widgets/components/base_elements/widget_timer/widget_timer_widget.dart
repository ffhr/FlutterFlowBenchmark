import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'dart:ui';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_timer_model.dart';
export 'widget_timer_model.dart';

class WidgetTimerWidget extends StatefulWidget {
  const WidgetTimerWidget({
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
  State<WidgetTimerWidget> createState() => _WidgetTimerWidgetState();
}

class _WidgetTimerWidgetState extends State<WidgetTimerWidget> {
  late WidgetTimerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetTimerModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.timerController1.onStartTimer();
      _model.instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 300),
        callback: (timer) async {
          _model.timerController2.onStartTimer();
          _model.instantTimer2 = InstantTimer.periodic(
            duration: Duration(milliseconds: 600),
            callback: (timer) async {
              _model.timerController3.onStartTimer();
            },
            startImmediately: true,
          );
        },
        startImmediately: true,
      );
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
          Container(
            width: 300.0,
            height: 300.0,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowTimer(
                    initialTime: _model.timerInitialTimeMs1,
                    getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                        value,
                        milliSecond: false),
                    controller: _model.timerController1,
                    updateStateInterval: Duration(milliseconds: 1000),
                    onChanged: (value, displayTime, shouldUpdate) {
                      _model.timerMilliseconds1 = value;
                      _model.timerValue1 = displayTime;
                      if (shouldUpdate) safeSetState(() {});
                    },
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Geist',
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowTimer(
                    initialTime: _model.timerInitialTimeMs2,
                    getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                      value,
                      hours: false,
                      milliSecond: false,
                    ),
                    controller: _model.timerController2,
                    updateStateInterval: Duration(milliseconds: 2000),
                    onChanged: (value, displayTime, shouldUpdate) {
                      _model.timerMilliseconds2 = value;
                      _model.timerValue2 = displayTime;
                      if (shouldUpdate) safeSetState(() {});
                    },
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Geist',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowTimer(
                    initialTime: _model.timerInitialTimeMs3,
                    getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                      value,
                      hours: false,
                      minute: false,
                      milliSecond: false,
                    ),
                    controller: _model.timerController3,
                    updateStateInterval: Duration(milliseconds: 2000),
                    onChanged: (value, displayTime, shouldUpdate) {
                      _model.timerMilliseconds3 = value;
                      _model.timerValue3 = displayTime;
                      if (shouldUpdate) safeSetState(() {});
                    },
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Geist',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowTimer(
                    initialTime: _model.timerInitialTimeMs4,
                    getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                      value,
                      hours: false,
                      minute: false,
                      milliSecond: false,
                    ),
                    controller: _model.timerController4,
                    updateStateInterval: Duration(milliseconds: 1000),
                    onChanged: (value, displayTime, shouldUpdate) {
                      _model.timerMilliseconds4 = value;
                      _model.timerValue4 = displayTime;
                      if (shouldUpdate) safeSetState(() {});
                    },
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Geist',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowTimer(
                    initialTime: _model.timerInitialTimeMs5,
                    getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                      value,
                      hours: false,
                      minute: false,
                    ),
                    controller: _model.timerController5,
                    updateStateInterval: Duration(milliseconds: 3000),
                    onChanged: (value, displayTime, shouldUpdate) {
                      _model.timerMilliseconds5 = value;
                      _model.timerValue5 = displayTime;
                      if (shouldUpdate) safeSetState(() {});
                    },
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Geist',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 28.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ].divide(SizedBox(height: 8.0)),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
