import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_pdf_viewer_model.dart';
export 'widget_pdf_viewer_model.dart';

class WidgetPdfViewerWidget extends StatefulWidget {
  const WidgetPdfViewerWidget({
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
  State<WidgetPdfViewerWidget> createState() => _WidgetPdfViewerWidgetState();
}

class _WidgetPdfViewerWidgetState extends State<WidgetPdfViewerWidget> {
  late WidgetPdfViewerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetPdfViewerModel());

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
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 600.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
            ),
            child: FlutterFlowPdfViewer(
              networkPath: 'http://www.pdf995.com/samples/pdf.pdf',
              width: 300.0,
              height: 600.0,
              horizontalScroll: true,
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
