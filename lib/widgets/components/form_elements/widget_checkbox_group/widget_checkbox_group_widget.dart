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
            height: 200.0,
            decoration: BoxDecoration(),
            child: FlutterFlowCheckboxGroup(
              options: [
                FFLocalizations.of(context).getText(
                  'o71kzb1j' /* Option 1 */,
                ),
                FFLocalizations.of(context).getText(
                  't1yoaj2i' /* Option 2 */,
                ),
                FFLocalizations.of(context).getText(
                  'y5tkhltp' /* Option 3 */,
                ),
                FFLocalizations.of(context).getText(
                  '10y33lqx' /* Option 4 */,
                )
              ],
              onChanged: (val) =>
                  safeSetState(() => _model.checkboxGroupValues = val),
              controller: _model.checkboxGroupValueController ??=
                  FormFieldController<List<String>>(
                [],
              ),
              activeColor: FlutterFlowTheme.of(context).primary,
              checkColor: FlutterFlowTheme.of(context).info,
              checkboxBorderColor: FlutterFlowTheme.of(context).secondaryText,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Geist',
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
              checkboxBorderRadius: BorderRadius.circular(4.0),
              initialized: _model.checkboxGroupValues != null,
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
