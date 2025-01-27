import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'widget_drop_down_widget.dart' show WidgetDropDownWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WidgetDropDownModel extends FlutterFlowModel<WidgetDropDownWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for DropDownAudi widget.
  String? dropDownAudiValue;
  FormFieldController<String>? dropDownAudiValueController;
  // State field(s) for DropDownAudiModel widget.
  String? dropDownAudiModelValue;
  FormFieldController<String>? dropDownAudiModelValueController;
  // State field(s) for inputCarSelect widget.
  String? inputCarSelectValue;
  FormFieldController<String>? inputCarSelectValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
