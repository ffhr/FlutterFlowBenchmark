import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:shadcn_u_i_kit_v48jv9/flutter_flow/flutter_flow_util.dart'
    as shadcn_u_i_kit_v48jv9_util
    show wrapWithModel, createModel, FlutterFlowDynamicModels;
import 'package:shadcn_u_i_kit_v48jv9/library_components/accordion/accordion_widget.dart'
    as shadcn_u_i_kit_v48jv9;
import 'package:shadcn_u_i_kit_v48jv9/library_components/alert/alert_widget.dart'
    as shadcn_u_i_kit_v48jv9;
import 'shadcn_widget.dart' show ShadcnWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShadcnModel extends FlutterFlowModel<ShadcnWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Accordion component.
  late shadcn_u_i_kit_v48jv9.AccordionModel accordionModel;
  // Model for Alert component.
  late shadcn_u_i_kit_v48jv9.AlertModel alertModel;

  @override
  void initState(BuildContext context) {
    accordionModel = shadcn_u_i_kit_v48jv9_util.createModel(
        context, () => shadcn_u_i_kit_v48jv9.AccordionModel());
    alertModel = shadcn_u_i_kit_v48jv9_util.createModel(
        context, () => shadcn_u_i_kit_v48jv9.AlertModel());
  }

  @override
  void dispose() {
    accordionModel.dispose();
    alertModel.dispose();
  }
}
