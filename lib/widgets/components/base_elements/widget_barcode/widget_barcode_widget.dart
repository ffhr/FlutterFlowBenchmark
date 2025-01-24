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
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 500.0,
              height: 600.0,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: BarcodeWidget(
                              data: 'https://flutterflow.io/',
                              barcode: Barcode.qrCode(),
                              width: 80.0,
                              height: 80.0,
                              color: FlutterFlowTheme.of(context).secondary,
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              errorBuilder: (_context, _error) => SizedBox(
                                width: 80.0,
                                height: 80.0,
                              ),
                              drawText: false,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'iqybsqne' /* QR Code */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Geist',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ].divide(SizedBox(height: 8.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: BarcodeWidget(
                              data: 'https://flutterflow.io/',
                              barcode: Barcode.aztec(),
                              width: 80.0,
                              height: 80.0,
                              color: FlutterFlowTheme.of(context).tertiary,
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              errorBuilder: (_context, _error) => SizedBox(
                                width: 80.0,
                                height: 80.0,
                              ),
                              drawText: false,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '5vy3z807' /* Aztec */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Geist',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ].divide(SizedBox(height: 8.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: BarcodeWidget(
                              data: 'https://flutterflow.io/',
                              barcode: Barcode.dataMatrix(),
                              width: 80.0,
                              height: 80.0,
                              color: FlutterFlowTheme.of(context).alternate,
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              errorBuilder: (_context, _error) => SizedBox(
                                width: 80.0,
                                height: 80.0,
                              ),
                              drawText: false,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'zrrd894y' /* Data Matrix */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Geist',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ].divide(SizedBox(height: 8.0)),
                      ),
                    ].divide(SizedBox(width: 8.0)).around(SizedBox(width: 8.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: BarcodeWidget(
                          data: 'https://flutterflow.io/',
                          barcode: Barcode.pdf417(),
                          width: 300.0,
                          height: 70.0,
                          color: FlutterFlowTheme.of(context).alternate,
                          backgroundColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          errorBuilder: (_context, _error) => SizedBox(
                            width: 300.0,
                            height: 70.0,
                          ),
                          drawText: false,
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'z7n44imt' /* PDF 417 */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Geist',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: BarcodeWidget(
                          data: 'https://flutterflow.io/',
                          barcode: Barcode.code128(),
                          width: 300.0,
                          height: 50.0,
                          color: FlutterFlowTheme.of(context).alternate,
                          backgroundColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          errorBuilder: (_context, _error) => SizedBox(
                            width: 300.0,
                            height: 50.0,
                          ),
                          drawText: false,
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'cumklydy' /* Code 128 */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Geist',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: BarcodeWidget(
                          data: 'https://flutterflow.io/',
                          barcode: Barcode.telepen(),
                          width: 300.0,
                          height: 50.0,
                          color: FlutterFlowTheme.of(context).alternate,
                          backgroundColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          errorBuilder: (_context, _error) => SizedBox(
                            width: 300.0,
                            height: 50.0,
                          ),
                          drawText: false,
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'rlhcj00r' /* Telepen */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Geist',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: BarcodeWidget(
                          data: '12344325546',
                          barcode: Barcode.codabar(),
                          width: 300.0,
                          height: 50.0,
                          color: FlutterFlowTheme.of(context).alternate,
                          backgroundColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          errorBuilder: (_context, _error) => SizedBox(
                            width: 300.0,
                            height: 50.0,
                          ),
                          drawText: false,
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'vpte67bz' /* Codebar */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Geist',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                ].divide(SizedBox(height: 16.0)).around(SizedBox(height: 16.0)),
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
