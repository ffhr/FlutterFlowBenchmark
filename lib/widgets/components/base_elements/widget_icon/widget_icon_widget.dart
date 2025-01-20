import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_icon_model.dart';
export 'widget_icon_model.dart';

class WidgetIconWidget extends StatefulWidget {
  const WidgetIconWidget({
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
  State<WidgetIconWidget> createState() => _WidgetIconWidgetState();
}

class _WidgetIconWidgetState extends State<WidgetIconWidget> {
  late WidgetIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetIconModel());

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
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(),
            child: Icon(
              Icons.assist_walker,
              color: FlutterFlowTheme.of(context).tertiary,
              size: 48.0,
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
