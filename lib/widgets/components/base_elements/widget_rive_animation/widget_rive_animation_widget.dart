import '/flutter_flow/flutter_flow_rive_controller.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:rive/rive.dart' hide LinearGradient;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_rive_animation_model.dart';
export 'widget_rive_animation_model.dart';

class WidgetRiveAnimationWidget extends StatefulWidget {
  const WidgetRiveAnimationWidget({
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
  State<WidgetRiveAnimationWidget> createState() =>
      _WidgetRiveAnimationWidgetState();
}

class _WidgetRiveAnimationWidgetState extends State<WidgetRiveAnimationWidget> {
  late WidgetRiveAnimationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetRiveAnimationModel());

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
          Container(
            width: 300.0,
            height: 300.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
            ),
            child: Container(
              width: 150.0,
              height: 130.0,
              child: RiveAnimation.network(
                'https://public.rive.app/community/runtime-files/1199-2317-jack-olantern.riv',
                artboard: 'New Artboard',
                fit: BoxFit.cover,
                controllers: _model.riveAnimationControllers,
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
