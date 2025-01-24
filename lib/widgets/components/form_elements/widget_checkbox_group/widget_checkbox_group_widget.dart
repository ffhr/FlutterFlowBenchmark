import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_checkbox_group_model.dart';
export 'widget_checkbox_group_model.dart';

class WidgetCheckboxGroupWidget extends StatefulWidget {
  const WidgetCheckboxGroupWidget({
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
  State<WidgetCheckboxGroupWidget> createState() =>
      _WidgetCheckboxGroupWidgetState();
}

class _WidgetCheckboxGroupWidgetState extends State<WidgetCheckboxGroupWidget> {
  late WidgetCheckboxGroupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetCheckboxGroupModel());

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
            height: 600.0,
            decoration: BoxDecoration(),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FlutterFlowCheckboxGroup(
                  options: [
                    FFLocalizations.of(context).getText(
                      'b5p3hjy1' /* Option 1 */,
                    ),
                    FFLocalizations.of(context).getText(
                      'knlet9s3' /* Option 2 */,
                    ),
                    FFLocalizations.of(context).getText(
                      'l2mmte57' /* Option 3 */,
                    ),
                    FFLocalizations.of(context).getText(
                      'bhwh2gsd' /* Option 4 */,
                    )
                  ],
                  onChanged: (val) =>
                      safeSetState(() => _model.checkboxGroupValues1 = val),
                  controller: _model.checkboxGroupValueController1 ??=
                      FormFieldController<List<String>>(
                    [],
                  ),
                  activeColor: FlutterFlowTheme.of(context).secondary,
                  checkColor: FlutterFlowTheme.of(context).primaryBackground,
                  checkboxBorderColor: FlutterFlowTheme.of(context).accent2,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Geist',
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: false,
                      ),
                  unselectedTextStyle:
                      FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Geist',
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                  labelPadding: EdgeInsets.all(4.0),
                  checkboxBorderRadius: BorderRadius.circular(4.0),
                  initialized: _model.checkboxGroupValues1 != null,
                ),
                FlutterFlowCheckboxGroup(
                  options: [
                    FFLocalizations.of(context).getText(
                      '3srzi738' /* Option 1 */,
                    ),
                    FFLocalizations.of(context).getText(
                      'wh7wjg22' /* Option 2 */,
                    ),
                    FFLocalizations.of(context).getText(
                      'f12s48e7' /* Option 3 */,
                    ),
                    FFLocalizations.of(context).getText(
                      'o40fbnym' /* Option 4 */,
                    )
                  ],
                  onChanged: (val) =>
                      safeSetState(() => _model.checkboxGroupValues2 = val),
                  controller: _model.checkboxGroupValueController2 ??=
                      FormFieldController<List<String>>(
                    [],
                  ),
                  activeColor: FlutterFlowTheme.of(context).tertiary,
                  checkColor: FlutterFlowTheme.of(context).primaryBackground,
                  checkboxBorderColor:
                      FlutterFlowTheme.of(context).secondaryText,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Geist',
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: false,
                      ),
                  unselectedTextStyle:
                      FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Geist',
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                  labelPadding: EdgeInsets.all(4.0),
                  checkboxBorderRadius: BorderRadius.circular(4.0),
                  initialized: _model.checkboxGroupValues2 != null,
                ),
              ].divide(SizedBox(height: 8.0)).around(SizedBox(height: 8.0)),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
