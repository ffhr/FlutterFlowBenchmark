import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_radio_button_model.dart';
export 'widget_radio_button_model.dart';

class WidgetRadioButtonWidget extends StatefulWidget {
  const WidgetRadioButtonWidget({
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
  State<WidgetRadioButtonWidget> createState() =>
      _WidgetRadioButtonWidgetState();
}

class _WidgetRadioButtonWidgetState extends State<WidgetRadioButtonWidget> {
  late WidgetRadioButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetRadioButtonModel());

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
            child: FlutterFlowRadioButton(
              options: [
                FFLocalizations.of(context).getText(
                  'kqqkyafw' /* Option 1 */,
                ),
                FFLocalizations.of(context).getText(
                  'c68r1upz' /* Option 2 */,
                ),
                FFLocalizations.of(context).getText(
                  '4phdycf0' /* Option 3 */,
                )
              ].toList(),
              onChanged: (val) => safeSetState(() {}),
              controller: _model.radioButtonValueController ??=
                  FormFieldController<String>(null),
              optionHeight: 32.0,
              textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Geist',
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
              selectedTextStyle:
                  FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Geist',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
              buttonPosition: RadioButtonPosition.left,
              direction: Axis.vertical,
              radioButtonColor: FlutterFlowTheme.of(context).primaryText,
              inactiveRadioButtonColor:
                  FlutterFlowTheme.of(context).primaryText,
              toggleable: false,
              horizontalAlignment: WrapAlignment.start,
              verticalAlignment: WrapCrossAlignment.start,
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
