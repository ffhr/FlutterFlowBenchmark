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
              width: 500.0,
              height: 600.0,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowChoiceChips(
                    options: [
                      ChipData(
                          FFLocalizations.of(context).getText(
                            'xjdz8fan' /* Option 1 */,
                          ),
                          Icons.food_bank_rounded),
                      ChipData(
                          FFLocalizations.of(context).getText(
                            'rtt6756h' /* Option 2 */,
                          ),
                          Icons.emoji_food_beverage_rounded),
                      ChipData(
                          FFLocalizations.of(context).getText(
                            '65oos320' /* Option 3 */,
                          ),
                          Icons.fastfood_rounded),
                      ChipData(
                          FFLocalizations.of(context).getText(
                            '789yqlik' /* Option 4 */,
                          ),
                          Icons.local_pizza_outlined),
                      ChipData(
                          FFLocalizations.of(context).getText(
                            'hlrgvxpd' /* Option 5 */,
                          ),
                          Icons.water_drop)
                    ],
                    onChanged: (val) =>
                        safeSetState(() => _model.choiceChipsValues1 = val),
                    selectedChipStyle: ChipStyle(
                      backgroundColor: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
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
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
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
                    multiselect: true,
                    initialized: _model.choiceChipsValues1 != null,
                    alignment: WrapAlignment.center,
                    controller: _model.choiceChipsValueController1 ??=
                        FormFieldController<List<String>>(
                      [],
                    ),
                    wrapped: true,
                  ),
                  FlutterFlowChoiceChips(
                    options: [
                      ChipData(FFLocalizations.of(context).getText(
                        'kz25xiqe' /* Option 2 */,
                      )),
                      ChipData(FFLocalizations.of(context).getText(
                        'klz6ixwr' /* Option 4 */,
                      )),
                      ChipData(FFLocalizations.of(context).getText(
                        'v1ljs6ut' /* Option 5 */,
                      ))
                    ],
                    onChanged: (val) => safeSetState(
                        () => _model.choiceChipsValue2 = val?.firstOrNull),
                    selectedChipStyle: ChipStyle(
                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Geist',
                                color: FlutterFlowTheme.of(context).info,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                      iconColor: FlutterFlowTheme.of(context).info,
                      iconSize: 20.0,
                      elevation: 5.0,
                      borderColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      borderWidth: 1.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    unselectedChipStyle: ChipStyle(
                      backgroundColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily: 'Geist',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                      iconColor: FlutterFlowTheme.of(context).secondary,
                      iconSize: 16.0,
                      elevation: 0.0,
                      borderColor: FlutterFlowTheme.of(context).tertiary,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    chipSpacing: 4.0,
                    rowSpacing: 8.0,
                    multiselect: false,
                    alignment: WrapAlignment.start,
                    controller: _model.choiceChipsValueController2 ??=
                        FormFieldController<List<String>>(
                      [],
                    ),
                    wrapped: false,
                  ),
                ].divide(SizedBox(height: 16.0)).around(SizedBox(height: 16.0)),
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
