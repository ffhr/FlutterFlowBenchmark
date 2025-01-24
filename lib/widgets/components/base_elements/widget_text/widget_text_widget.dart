import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_text_model.dart';
export 'widget_text_model.dart';

class WidgetTextWidget extends StatefulWidget {
  const WidgetTextWidget({super.key});

  @override
  State<WidgetTextWidget> createState() => _WidgetTextWidgetState();
}

class _WidgetTextWidgetState extends State<WidgetTextWidget> {
  late WidgetTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetTextModel());

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
          Text(
            FFLocalizations.of(context).getText(
              'zplhao5t' /* Hello World */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Geist',
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
          ),
          SelectionArea(
              child: Text(
            FFLocalizations.of(context).getText(
              '94on63aj' /* Hello World */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Geist',
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w900,
                  useGoogleFonts: false,
                ),
          )),
        ],
      ),
    );
  }
}
