import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_toggle_icon_model.dart';
export 'widget_toggle_icon_model.dart';

class WidgetToggleIconWidget extends StatefulWidget {
  const WidgetToggleIconWidget({
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
  State<WidgetToggleIconWidget> createState() => _WidgetToggleIconWidgetState();
}

class _WidgetToggleIconWidgetState extends State<WidgetToggleIconWidget> {
  late WidgetToggleIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetToggleIconModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.liked = !_model.liked;
      safeSetState(() {});
    });

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
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(),
              child: ToggleIcon(
                onPressed: () async {
                  safeSetState(() => _model.liked = !_model.liked);
                  _model.liked = !_model.liked;
                  safeSetState(() {});
                },
                value: _model.liked,
                onIcon: Icon(
                  Icons.favorite_outlined,
                  color: FlutterFlowTheme.of(context).tertiary,
                  size: 48.0,
                ),
                offIcon: Icon(
                  Icons.favorite_border,
                  color: FlutterFlowTheme.of(context).tertiary,
                  size: 48.0,
                ),
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
