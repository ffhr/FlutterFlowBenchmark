import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_vertical_divider_model.dart';
export 'widget_vertical_divider_model.dart';

class WidgetVerticalDividerWidget extends StatefulWidget {
  const WidgetVerticalDividerWidget({
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
  State<WidgetVerticalDividerWidget> createState() =>
      _WidgetVerticalDividerWidgetState();
}

class _WidgetVerticalDividerWidgetState
    extends State<WidgetVerticalDividerWidget> {
  late WidgetVerticalDividerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetVerticalDividerModel());

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
      height: 512.0,
      decoration: BoxDecoration(),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryText,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 100.0,
              child: VerticalDivider(
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
            ),
            SizedBox(
              height: 100.0,
              child: VerticalDivider(
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
            ),
            SizedBox(
              height: 200.0,
              child: VerticalDivider(
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
            ),
            SizedBox(
              height: 100.0,
              child: VerticalDivider(
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
