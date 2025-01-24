import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'widget_text_field_widget.dart' show WidgetTextFieldWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WidgetTextFieldModel extends FlutterFlowModel<WidgetTextFieldWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for text1 widget.
  FocusNode? text1FocusNode1;
  TextEditingController? text1TextController1;
  String? Function(BuildContext, String?)? text1TextController1Validator;
  // State field(s) for text2 widget.
  FocusNode? text2FocusNode1;
  TextEditingController? text2TextController1;
  String? Function(BuildContext, String?)? text2TextController1Validator;
  // State field(s) for text3 widget.
  FocusNode? text3FocusNode1;
  TextEditingController? text3TextController1;
  String? Function(BuildContext, String?)? text3TextController1Validator;
  // State field(s) for text1 widget.
  FocusNode? text1FocusNode2;
  TextEditingController? text1TextController2;
  String? Function(BuildContext, String?)? text1TextController2Validator;
  String? _text1TextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'shcfe0tc' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'yqup3ijm' /* Invalid email */,
      );
    }
    return null;
  }

  // State field(s) for text2 widget.
  FocusNode? text2FocusNode2;
  TextEditingController? text2TextController2;
  String? Function(BuildContext, String?)? text2TextController2Validator;
  String? _text2TextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9oiqgk29' /* Field is required */,
      );
    }

    if (!RegExp('gmail\\.com\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'olyyylg5' /* Only Gmail emails are accepted */,
      );
    }
    return null;
  }

  // State field(s) for text3 widget.
  FocusNode? text3FocusNode2;
  TextEditingController? text3TextController2;
  String? Function(BuildContext, String?)? text3TextController2Validator;
  String? _text3TextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'uix1euyt' /* Field is required */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        '2s9w8o02' /* Minimum 10 chars */,
      );
    }
    if (val.length > 100) {
      return FFLocalizations.of(context).getText(
        '3p7lja1q' /* Max 100 chars */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    text1TextController2Validator = _text1TextController2Validator;
    text2TextController2Validator = _text2TextController2Validator;
    text3TextController2Validator = _text3TextController2Validator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    text1FocusNode1?.dispose();
    text1TextController1?.dispose();

    text2FocusNode1?.dispose();
    text2TextController1?.dispose();

    text3FocusNode1?.dispose();
    text3TextController1?.dispose();

    text1FocusNode2?.dispose();
    text1TextController2?.dispose();

    text2FocusNode2?.dispose();
    text2TextController2?.dispose();

    text3FocusNode2?.dispose();
    text3TextController2?.dispose();
  }
}
