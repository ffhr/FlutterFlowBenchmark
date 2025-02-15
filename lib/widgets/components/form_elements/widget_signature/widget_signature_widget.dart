import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';
import 'widget_signature_model.dart';
export 'widget_signature_model.dart';

class WidgetSignatureWidget extends StatefulWidget {
  const WidgetSignatureWidget({
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
  State<WidgetSignatureWidget> createState() => _WidgetSignatureWidgetState();
}

class _WidgetSignatureWidgetState extends State<WidgetSignatureWidget> {
  late WidgetSignatureModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetSignatureModel());

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
            height: 100.0,
            decoration: BoxDecoration(),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ClipRect(
                  child: Signature(
                    controller: _model.signatureController1 ??=
                        SignatureController(
                      penStrokeWidth: 2.0,
                      penColor: FlutterFlowTheme.of(context).primaryText,
                      exportBackgroundColor: Colors.white,
                    ),
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    width: 250.0,
                    height: 120.0,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 512.0,
            height: 256.0,
            decoration: BoxDecoration(),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ClipRect(
                  child: Signature(
                    controller: _model.signatureController2 ??=
                        SignatureController(
                      penStrokeWidth: 2.0,
                      penColor: FlutterFlowTheme.of(context).secondary,
                      exportBackgroundColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    backgroundColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
