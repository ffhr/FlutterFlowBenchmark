import '/flutter_flow/flutter_flow_rive_controller.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:rive/rive.dart' hide LinearGradient;
import 'widget_rive_animation_widget.dart' show WidgetRiveAnimationWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WidgetRiveAnimationModel
    extends FlutterFlowModel<WidgetRiveAnimationWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RiveAnimation widget.
  final riveAnimationAnimationsList = [
    'Main Loop',
    'Lightning 0',
  ];
  List<FlutterFlowRiveController> riveAnimationControllers = [];

  @override
  void initState(BuildContext context) {
    riveAnimationAnimationsList.forEach((name) {
      riveAnimationControllers.add(FlutterFlowRiveController(
        name,
      ));
    });
  }

  @override
  void dispose() {}
}
