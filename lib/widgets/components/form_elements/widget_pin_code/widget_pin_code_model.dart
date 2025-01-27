import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'widget_pin_code_widget.dart' show WidgetPinCodeWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WidgetPinCodeModel extends FlutterFlowModel<WidgetPinCodeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController1;
  String? Function(BuildContext, String?)? pinCodeController1Validator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController2;
  String? Function(BuildContext, String?)? pinCodeController2Validator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController3;
  String? Function(BuildContext, String?)? pinCodeController3Validator;

  @override
  void initState(BuildContext context) {
    pinCodeController1 = TextEditingController();
    pinCodeController2 = TextEditingController();
    pinCodeController3 = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController1?.dispose();
    pinCodeController2?.dispose();
    pinCodeController3?.dispose();
  }
}
