import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_slider_model.dart';
export 'widget_slider_model.dart';

class WidgetSliderWidget extends StatefulWidget {
  const WidgetSliderWidget({
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
  State<WidgetSliderWidget> createState() => _WidgetSliderWidgetState();
}

class _WidgetSliderWidgetState extends State<WidgetSliderWidget> {
  late WidgetSliderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetSliderModel());

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
            child: Slider(
              activeColor: FlutterFlowTheme.of(context).primary,
              inactiveColor: FlutterFlowTheme.of(context).alternate,
              min: 0.0,
              max: 10.0,
              value: _model.sliderValue ??= 5.0,
              onChanged: (newValue) {
                newValue = double.parse(newValue.toStringAsFixed(2));
                safeSetState(() => _model.sliderValue = newValue);
              },
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}