import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:shadcn_u_i_kit_v48jv9/app_state.dart'
    as shadcn_u_i_kit_v48jv9_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_data_table_model.dart';
export 'widget_data_table_model.dart';

class WidgetDataTableWidget extends StatefulWidget {
  const WidgetDataTableWidget({
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
  State<WidgetDataTableWidget> createState() => _WidgetDataTableWidgetState();
}

class _WidgetDataTableWidgetState extends State<WidgetDataTableWidget> {
  late WidgetDataTableModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetDataTableModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<shadcn_u_i_kit_v48jv9_app_state.FFAppState>();

    return Container(
      constraints: BoxConstraints(
        maxHeight: 1024.0,
      ),
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Builder(
              builder: (context) {
                final data = FFAppState().DataTableStrings.toList();

                return FlutterFlowDataTable<String>(
                  controller: _model.paginatedDataTableController,
                  data: data,
                  columnsBuilder: (onSortChanged) => [
                    DataColumn2(
                      label: DefaultTextStyle.merge(
                        softWrap: true,
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '0vvjspov' /* name */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Geist',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ),
                    DataColumn2(
                      label: DefaultTextStyle.merge(
                        softWrap: true,
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'wcybq7f8' /* email */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Geist',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ),
                  ],
                  dataRowBuilder:
                      (dataItem, dataIndex, selected, onSelectChanged) =>
                          DataRow(
                    selected: selected,
                    onSelectChanged: onSelectChanged,
                    color: MaterialStateProperty.all(
                      dataIndex % 2 == 0
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    cells: [
                      Text(
                        dataItem,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Geist',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                      Text(
                        dataItem,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Geist',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ].map((c) => DataCell(c)).toList(),
                  ),
                  paginated: true,
                  selectable: true,
                  hidePaginator: false,
                  showFirstLastButtons: false,
                  height: 512.0,
                  headingRowHeight: 56.0,
                  dataRowHeight: 48.0,
                  columnSpacing: 20.0,
                  headingRowColor:
                      FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                  addHorizontalDivider: true,
                  addTopAndBottomDivider: false,
                  hideDefaultHorizontalDivider: true,
                  horizontalDividerColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  horizontalDividerThickness: 1.0,
                  addVerticalDivider: false,
                  checkboxUnselectedFillColor: Colors.transparent,
                  checkboxSelectedFillColor: Colors.transparent,
                  checkboxCheckColor: Color(0x8A000000),
                  checkboxUnselectedBorderColor: Color(0x8A000000),
                  checkboxSelectedBorderColor: Color(0x8A000000),
                );
              },
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
