import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_language_selector_model.dart';
export 'widget_language_selector_model.dart';

class WidgetLanguageSelectorWidget extends StatefulWidget {
  const WidgetLanguageSelectorWidget({
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
  State<WidgetLanguageSelectorWidget> createState() =>
      _WidgetLanguageSelectorWidgetState();
}

class _WidgetLanguageSelectorWidgetState
    extends State<WidgetLanguageSelectorWidget> {
  late WidgetLanguageSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetLanguageSelectorModel());

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
              child: FlutterFlowLanguageSelector(
                width: 200.0,
                height: 40.0,
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                borderColor: FlutterFlowTheme.of(context).secondary,
                dropdownIconColor: FlutterFlowTheme.of(context).secondary,
                borderRadius: 8.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Geist',
                      color: FlutterFlowTheme.of(context).secondary,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
                hideFlags: true,
                flagSize: 24.0,
                flagTextGap: 8.0,
                currentLanguage: FFLocalizations.of(context).languageCode,
                languages: FFLocalizations.languages(),
                onChanged: (lang) => setAppLanguage(context, lang),
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
