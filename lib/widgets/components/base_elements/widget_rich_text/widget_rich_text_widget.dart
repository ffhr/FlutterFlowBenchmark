import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_rich_text_model.dart';
export 'widget_rich_text_model.dart';

class WidgetRichTextWidget extends StatefulWidget {
  const WidgetRichTextWidget({super.key});

  @override
  State<WidgetRichTextWidget> createState() => _WidgetRichTextWidgetState();
}

class _WidgetRichTextWidgetState extends State<WidgetRichTextWidget> {
  late WidgetRichTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetRichTextModel());

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
          RichText(
            textScaler: MediaQuery.of(context).textScaler,
            text: TextSpan(
              children: [
                TextSpan(
                  text: FFLocalizations.of(context).getText(
                    'g8dr1kzf' /* Introducing the  */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Geist',
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
                TextSpan(
                  text: FFLocalizations.of(context).getText(
                    'l5clf4ft' /* "Aura"  */,
                  ),
                  style: TextStyle(
                    color: FlutterFlowTheme.of(context).tertiary,
                  ),
                ),
                TextSpan(
                  text: FFLocalizations.of(context).getText(
                    'nnrt2l1q' /* Smartwatch */,
                  ),
                  style: TextStyle(
                    color: FlutterFlowTheme.of(context).secondary,
                  ),
                )
              ],
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Geist',
                    fontSize: 20.0,
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
