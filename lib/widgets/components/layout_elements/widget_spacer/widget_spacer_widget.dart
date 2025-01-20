import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_spacer_model.dart';
export 'widget_spacer_model.dart';

class WidgetSpacerWidget extends StatefulWidget {
  const WidgetSpacerWidget({
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
  State<WidgetSpacerWidget> createState() => _WidgetSpacerWidgetState();
}

class _WidgetSpacerWidgetState extends State<WidgetSpacerWidget> {
  late WidgetSpacerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetSpacerModel());

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
      constraints: BoxConstraints(
        maxHeight: 500.0,
      ),
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            FFLocalizations.of(context).getText(
              'jwpvn23o' /* Hello World */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Geist',
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
          ),
          Spacer(),
          Text(
            FFLocalizations.of(context).getText(
              'crfcdf0r' /* Hello World */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Geist',
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
          ),
        ].divide(SizedBox(height: 16.0)).around(SizedBox(height: 16.0)),
      ),
    );
  }
}
