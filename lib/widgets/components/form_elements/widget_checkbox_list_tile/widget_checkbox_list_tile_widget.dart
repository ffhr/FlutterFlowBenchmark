import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_checkbox_list_tile_model.dart';
export 'widget_checkbox_list_tile_model.dart';

class WidgetCheckboxListTileWidget extends StatefulWidget {
  const WidgetCheckboxListTileWidget({
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
  State<WidgetCheckboxListTileWidget> createState() =>
      _WidgetCheckboxListTileWidgetState();
}

class _WidgetCheckboxListTileWidgetState
    extends State<WidgetCheckboxListTileWidget> {
  late WidgetCheckboxListTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetCheckboxListTileModel());

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
            width: 500.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
            ),
            child: Material(
              color: Colors.transparent,
              child: Theme(
                data: ThemeData(
                  checkboxTheme: CheckboxThemeData(
                    visualDensity: VisualDensity.compact,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                ),
                child: CheckboxListTile(
                  value: _model.checkboxListTileValue ??= true,
                  onChanged: (newValue) async {
                    safeSetState(
                        () => _model.checkboxListTileValue = newValue!);
                  },
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'urxg1jyv' /* Title */,
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Geist',
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  subtitle: Text(
                    FFLocalizations.of(context).getText(
                      'ma6bq2zm' /* Subtitle */,
                    ),
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Geist',
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  activeColor: FlutterFlowTheme.of(context).primary,
                  checkColor: FlutterFlowTheme.of(context).info,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
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
