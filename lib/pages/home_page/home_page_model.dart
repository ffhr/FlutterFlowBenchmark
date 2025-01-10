import '/components/widgets_from_sql_lite_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for WidgetsFromSqlLite component.
  late WidgetsFromSqlLiteModel widgetsFromSqlLiteModel;

  @override
  void initState(BuildContext context) {
    widgetsFromSqlLiteModel =
        createModel(context, () => WidgetsFromSqlLiteModel());
  }

  @override
  void dispose() {
    widgetsFromSqlLiteModel.dispose();
  }
}
