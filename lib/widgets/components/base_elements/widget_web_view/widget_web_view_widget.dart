import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_web_view_model.dart';
export 'widget_web_view_model.dart';

class WidgetWebViewWidget extends StatefulWidget {
  const WidgetWebViewWidget({
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
  State<WidgetWebViewWidget> createState() => _WidgetWebViewWidgetState();
}

class _WidgetWebViewWidgetState extends State<WidgetWebViewWidget> {
  late WidgetWebViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetWebViewModel());

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
            width: 500.0,
            height: 700.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: FlutterFlowWebView(
                content: 'https://flutter.dev',
                width: 500.0,
                height: 700.0,
                verticalScroll: false,
                horizontalScroll: false,
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
