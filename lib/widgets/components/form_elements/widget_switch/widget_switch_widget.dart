import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_switch_model.dart';
export 'widget_switch_model.dart';

class WidgetSwitchWidget extends StatefulWidget {
  const WidgetSwitchWidget({
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
  State<WidgetSwitchWidget> createState() => _WidgetSwitchWidgetState();
}

class _WidgetSwitchWidgetState extends State<WidgetSwitchWidget> {
  late WidgetSwitchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetSwitchModel());

    _model.switchValue1 = false;
    _model.switchValue2 = true;
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Switch.adaptive(
                  value: _model.switchValue1!,
                  onChanged: (newValue) async {
                    safeSetState(() => _model.switchValue1 = newValue!);
                  },
                  activeColor: FlutterFlowTheme.of(context).secondary,
                  activeTrackColor: FlutterFlowTheme.of(context).primary,
                  inactiveTrackColor:
                      FlutterFlowTheme.of(context).secondaryText,
                  inactiveThumbColor: Color(0x882563EB),
                ),
                Switch.adaptive(
                  value: _model.switchValue2!,
                  onChanged: (newValue) async {
                    safeSetState(() => _model.switchValue2 = newValue!);
                  },
                  activeColor: FlutterFlowTheme.of(context).tertiary,
                  activeTrackColor: Color(0x93E11D48),
                  inactiveTrackColor: Color(0x89E11D48),
                  inactiveThumbColor:
                      FlutterFlowTheme.of(context).primaryBackground,
                ),
              ].divide(SizedBox(height: 8.0)).around(SizedBox(height: 8.0)),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
