import '/components/widgets_from_app_state_constants_widget.dart';
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
import 'package:webviewx_plus/webviewx_plus.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for WidgetsFromSqlLite component.
  late WidgetsFromSqlLiteModel widgetsFromSqlLiteModel;
  // Model for WidgetsFromAppStateConstants component.
  late WidgetsFromAppStateConstantsModel widgetsFromAppStateConstantsModel;

  @override
  void initState(BuildContext context) {
    widgetsFromSqlLiteModel =
        createModel(context, () => WidgetsFromSqlLiteModel());
    widgetsFromAppStateConstantsModel =
        createModel(context, () => WidgetsFromAppStateConstantsModel());
  }

  @override
  void dispose() {
    widgetsFromSqlLiteModel.dispose();
    widgetsFromAppStateConstantsModel.dispose();
  }
}
