import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:shadcn_u_i_kit_v48jv9/app_state.dart'
    as shadcn_u_i_kit_v48jv9_app_state;
import 'widget_chart_widget.dart' show WidgetChartWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WidgetChartModel extends FlutterFlowModel<WidgetChartWidget> {
  ///  Local state fields for this component.

  List<int> capacityList = [1, 2, 3, 4, 5, 6, 7];
  void addToCapacityList(int item) => capacityList.add(item);
  void removeFromCapacityList(int item) => capacityList.remove(item);
  void removeAtIndexFromCapacityList(int index) => capacityList.removeAt(index);
  void insertAtIndexInCapacityList(int index, int item) =>
      capacityList.insert(index, item);
  void updateCapacityListAtIndex(int index, Function(int) updateFn) =>
      capacityList[index] = updateFn(capacityList[index]);

  List<String> barLabels = ['Mar', 'Apr', 'Mai', 'Jun', 'Jul', 'Aug', 'Sep'];
  void addToBarLabels(String item) => barLabels.add(item);
  void removeFromBarLabels(String item) => barLabels.remove(item);
  void removeAtIndexFromBarLabels(int index) => barLabels.removeAt(index);
  void insertAtIndexInBarLabels(int index, String item) =>
      barLabels.insert(index, item);
  void updateBarLabelsAtIndex(int index, Function(String) updateFn) =>
      barLabels[index] = updateFn(barLabels[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
