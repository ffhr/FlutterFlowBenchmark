import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, -1.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedDefaultTextStyle(
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Geist',
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
                duration: Duration(milliseconds: 600),
                curve: Curves.easeIn,
                child: Text(
                  FFLocalizations.of(context).getText(
                    'zplhao5t' /* Hello World */,
                  ),
                ),
              ),
              GradientText(
                FFLocalizations.of(context).getText(
                  '80xeil39' /* Hello World */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Geist',
                      color: FlutterFlowTheme.of(context).secondary,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w900,
                      shadows: [
                        Shadow(
                          color: FlutterFlowTheme.of(context).secondaryText,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 2.0,
                        )
                      ],
                      useGoogleFonts: false,
                    ),
                colors: [
                  Color(0xFF759CF1),
                  FlutterFlowTheme.of(context).secondary
                ],
                gradientDirection: GradientDirection.ltr,
                gradientType: GradientType.linear,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: SelectionArea(
                    child: GradientText(
                  FFLocalizations.of(context).getText(
                    'fybv3l40' /* Hello World */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Geist',
                        fontSize: 18.0,
                        letterSpacing: 1.5,
                        fontStyle: FontStyle.italic,
                        useGoogleFonts: false,
                        lineHeight: 1.5,
                      ),
                  colors: [
                    FlutterFlowTheme.of(context).primary,
                    FlutterFlowTheme.of(context).secondary,
                    FlutterFlowTheme.of(context).tertiary
                  ],
                  gradientDirection: GradientDirection.ltr,
                  gradientType: GradientType.linear,
                )),
              ),
              GradientText(
                FFLocalizations.of(context).getText(
                  'kajniits' /* Hello World */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Geist',
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.lineThrough,
                      useGoogleFonts: false,
                    ),
                colors: [
                  FlutterFlowTheme.of(context).primary,
                  FlutterFlowTheme.of(context).tertiary
                ],
                gradientType: GradientType.radial,
                radius: 2.0,
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
                      decoration: TextDecoration.underline,
                      useGoogleFonts: false,
                    ),
              )),
            ].divide(SizedBox(height: 4.0)),
          ),
        ),
      ),
    );
  }
}
