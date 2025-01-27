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
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).alternate,
                      ),
                      child: CheckboxListTile(
                        value: _model.checkboxListTileValue1 ??= true,
                        onChanged: (newValue) async {
                          safeSetState(
                              () => _model.checkboxListTileValue1 = newValue!);
                        },
                        title: Text(
                          FFLocalizations.of(context).getText(
                            'l4gei15q' /* Title */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Geist',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        subtitle: Text(
                          FFLocalizations.of(context).getText(
                            'hhs5l1dv' /* Subtitle */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Geist',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        tileColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        activeColor: FlutterFlowTheme.of(context).primary,
                        checkColor: FlutterFlowTheme.of(context).info,
                        dense: false,
                        controlAffinity: ListTileControlAffinity.trailing,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        unselectedWidgetColor: Color(0xAEE11D48),
                      ),
                      child: CheckboxListTile(
                        value: _model.checkboxListTileValue2 ??= true,
                        onChanged: (newValue) async {
                          safeSetState(
                              () => _model.checkboxListTileValue2 = newValue!);
                        },
                        title: Text(
                          FFLocalizations.of(context).getText(
                            '1raxwq7n' /* Title */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleLarge
                              .override(
                                fontFamily: 'Geist',
                                color: FlutterFlowTheme.of(context).secondary,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                        ),
                        subtitle: Text(
                          FFLocalizations.of(context).getText(
                            'jk2brwr8' /* Subtitle */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'Geist',
                                color: FlutterFlowTheme.of(context).secondary,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                        ),
                        tileColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        activeColor: FlutterFlowTheme.of(context).tertiary,
                        checkColor: FlutterFlowTheme.of(context).info,
                        dense: false,
                        controlAffinity: ListTileControlAffinity.trailing,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 8.0)).around(SizedBox(height: 8.0)),
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
