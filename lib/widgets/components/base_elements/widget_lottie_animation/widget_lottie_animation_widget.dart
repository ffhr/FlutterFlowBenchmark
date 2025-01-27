import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'widget_lottie_animation_model.dart';
export 'widget_lottie_animation_model.dart';

class WidgetLottieAnimationWidget extends StatefulWidget {
  const WidgetLottieAnimationWidget({
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
  State<WidgetLottieAnimationWidget> createState() =>
      _WidgetLottieAnimationWidgetState();
}

class _WidgetLottieAnimationWidgetState
    extends State<WidgetLottieAnimationWidget> {
  late WidgetLottieAnimationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetLottieAnimationModel());

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
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Lottie.asset(
                'assets/jsons/Main_Scene.json',
                width: 200.0,
                height: 200.0,
                fit: BoxFit.contain,
                animate: true,
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
