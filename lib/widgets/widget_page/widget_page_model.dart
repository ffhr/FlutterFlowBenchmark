import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widgets/components/base_elements/widget_text/widget_text_widget.dart';
import '/widgets/components/layout_elements/widget_card/widget_card_widget.dart';
import '/widgets/components/layout_elements/widget_column/widget_column_widget.dart';
import '/widgets/components/layout_elements/widget_container/widget_container_widget.dart';
import '/widgets/components/layout_elements/widget_row/widget_row_widget.dart';
import '/widgets/components/layout_elements/widget_stack/widget_stack_widget.dart';
import 'dart:ui';
import 'widget_page_widget.dart' show WidgetPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WidgetPageModel extends FlutterFlowModel<WidgetPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for WidgetText component.
  late WidgetTextModel widgetTextModel1;
  // Model for WidgetContainer component.
  late WidgetContainerModel widgetContainerModel;
  // Model for WidgetRow component.
  late WidgetRowModel widgetRowModel;
  // Model for WidgetColumn component.
  late WidgetColumnModel widgetColumnModel;
  // Model for WidgetStack component.
  late WidgetStackModel widgetStackModel;
  // Model for WidgetCard component.
  late WidgetCardModel widgetCardModel;
  // Model for WidgetText component.
  late WidgetTextModel widgetTextModel2;

  @override
  void initState(BuildContext context) {
    widgetTextModel1 = createModel(context, () => WidgetTextModel());
    widgetContainerModel = createModel(context, () => WidgetContainerModel());
    widgetRowModel = createModel(context, () => WidgetRowModel());
    widgetColumnModel = createModel(context, () => WidgetColumnModel());
    widgetStackModel = createModel(context, () => WidgetStackModel());
    widgetCardModel = createModel(context, () => WidgetCardModel());
    widgetTextModel2 = createModel(context, () => WidgetTextModel());
  }

  @override
  void dispose() {
    widgetTextModel1.dispose();
    widgetContainerModel.dispose();
    widgetRowModel.dispose();
    widgetColumnModel.dispose();
    widgetStackModel.dispose();
    widgetCardModel.dispose();
    widgetTextModel2.dispose();
  }
}
