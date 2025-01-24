import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'widget_data_table_widget.dart' show WidgetDataTableWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WidgetDataTableModel extends FlutterFlowModel<WidgetDataTableWidget> {
  ///  Local state fields for this component.

  List<String> dataTableStrings = [
    'text1',
    'text2',
    'text3',
    'text4',
    'text5',
    'text6',
    'text7',
    'text8',
    'text9',
    'text10',
    'text11',
    'text12',
    'text13',
    'text14',
    'text15',
    'text16',
    'text17',
    'text18',
    'text19',
    'text20',
    'text21'
  ];
  void addToDataTableStrings(String item) => dataTableStrings.add(item);
  void removeFromDataTableStrings(String item) => dataTableStrings.remove(item);
  void removeAtIndexFromDataTableStrings(int index) =>
      dataTableStrings.removeAt(index);
  void insertAtIndexInDataTableStrings(int index, String item) =>
      dataTableStrings.insert(index, item);
  void updateDataTableStringsAtIndex(int index, Function(String) updateFn) =>
      dataTableStrings[index] = updateFn(dataTableStrings[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController = FlutterFlowDataTableController<String>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
