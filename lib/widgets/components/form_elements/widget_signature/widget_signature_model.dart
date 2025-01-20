import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'widget_signature_widget.dart' show WidgetSignatureWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';

class WidgetSignatureModel extends FlutterFlowModel<WidgetSignatureWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Signature widget.
  SignatureController? signatureController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    signatureController?.dispose();
  }
}
