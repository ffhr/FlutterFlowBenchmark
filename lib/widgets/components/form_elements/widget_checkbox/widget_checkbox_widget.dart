import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_checkbox_model.dart';
export 'widget_checkbox_model.dart';

class WidgetCheckboxWidget extends StatefulWidget {
  const WidgetCheckboxWidget({
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
  State<WidgetCheckboxWidget> createState() => _WidgetCheckboxWidgetState();
}

class _WidgetCheckboxWidgetState extends State<WidgetCheckboxWidget> {
  late WidgetCheckboxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetCheckboxModel());

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
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Theme(
                  data: ThemeData(
                    checkboxTheme: CheckboxThemeData(
                      visualDensity: VisualDensity.compact,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    unselectedWidgetColor:
                        FlutterFlowTheme.of(context).alternate,
                  ),
                  child: Checkbox(
                    value: _model.checkboxValue ??= true,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.checkboxValue = newValue!);
                    },
                    side: BorderSide(
                      width: 2,
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                    activeColor: FlutterFlowTheme.of(context).primary,
                    checkColor: FlutterFlowTheme.of(context).info,
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'tu8gzu3r' /* Hello World */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Geist',
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
              ].divide(SizedBox(width: 4.0)),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
