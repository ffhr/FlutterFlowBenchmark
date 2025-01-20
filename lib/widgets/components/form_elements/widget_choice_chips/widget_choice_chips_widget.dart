import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_choice_chips_model.dart';
export 'widget_choice_chips_model.dart';

class WidgetChoiceChipsWidget extends StatefulWidget {
  const WidgetChoiceChipsWidget({
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
  State<WidgetChoiceChipsWidget> createState() =>
      _WidgetChoiceChipsWidgetState();
}

class _WidgetChoiceChipsWidgetState extends State<WidgetChoiceChipsWidget> {
  late WidgetChoiceChipsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetChoiceChipsModel());

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
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: 300.0,
              height: 100.0,
              decoration: BoxDecoration(),
              child: FlutterFlowChoiceChips(
                options: [
                  ChipData(
                      FFLocalizations.of(context).getText(
                        'udxmurb5' /* Option 1 */,
                      ),
                      Icons.food_bank_rounded),
                  ChipData(
                      FFLocalizations.of(context).getText(
                        'lgwm2fzh' /* Option 2 */,
                      ),
                      Icons.emoji_food_beverage_rounded),
                  ChipData(
                      FFLocalizations.of(context).getText(
                        'edi6h9m3' /* Option 3 */,
                      ),
                      Icons.fastfood_rounded),
                  ChipData(
                      FFLocalizations.of(context).getText(
                        'vkvxudlo' /* Option 4 */,
                      ),
                      Icons.local_pizza_outlined),
                  ChipData(
                      FFLocalizations.of(context).getText(
                        '5nx0j5m1' /* Option 5 */,
                      ),
                      Icons.water_drop)
                ],
                onChanged: (val) => safeSetState(
                    () => _model.choiceChipsValue = val?.firstOrNull),
                selectedChipStyle: ChipStyle(
                  backgroundColor: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Geist',
                        color: FlutterFlowTheme.of(context).info,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                  iconColor: FlutterFlowTheme.of(context).info,
                  iconSize: 16.0,
                  elevation: 0.0,
                  borderColor: FlutterFlowTheme.of(context).secondary,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                unselectedChipStyle: ChipStyle(
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Geist',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                  iconColor: FlutterFlowTheme.of(context).secondaryText,
                  iconSize: 16.0,
                  elevation: 0.0,
                  borderColor: FlutterFlowTheme.of(context).secondaryText,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                chipSpacing: 8.0,
                rowSpacing: 8.0,
                multiselect: false,
                alignment: WrapAlignment.start,
                controller: _model.choiceChipsValueController ??=
                    FormFieldController<List<String>>(
                  [],
                ),
                wrapped: true,
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
