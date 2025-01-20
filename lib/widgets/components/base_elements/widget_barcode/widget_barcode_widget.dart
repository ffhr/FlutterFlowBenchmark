import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_barcode_model.dart';
export 'widget_barcode_model.dart';

class WidgetBarcodeWidget extends StatefulWidget {
  const WidgetBarcodeWidget({
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
  State<WidgetBarcodeWidget> createState() => _WidgetBarcodeWidgetState();
}

class _WidgetBarcodeWidgetState extends State<WidgetBarcodeWidget> {
  late WidgetBarcodeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetBarcodeModel());

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
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: BarcodeWidget(
                    data: 'https://flutterflow.io/',
                    barcode: Barcode.qrCode(),
                    width: 100.0,
                    height: 100.0,
                    color: FlutterFlowTheme.of(context).secondary,
                    backgroundColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    errorBuilder: (_context, _error) => SizedBox(
                      width: 100.0,
                      height: 100.0,
                    ),
                    drawText: false,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: BarcodeWidget(
                    data: 'https://flutterflow.io/',
                    barcode: Barcode.pdf417(),
                    width: 100.0,
                    height: 100.0,
                    color: FlutterFlowTheme.of(context).alternate,
                    backgroundColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    errorBuilder: (_context, _error) => SizedBox(
                      width: 100.0,
                      height: 100.0,
                    ),
                    drawText: false,
                  ),
                ),
              ].divide(SizedBox(height: 16.0)).around(SizedBox(height: 16.0)),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
