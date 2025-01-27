import '/backend/braintree/payment_manager.dart';
import '/flutter_flow/flutter_flow_credit_card_form.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'widget_credit_card_form_widget.dart' show WidgetCreditCardFormWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WidgetCreditCardFormModel
    extends FlutterFlowModel<WidgetCreditCardFormWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CreditCardForm widget.
  final creditCardFormKey = GlobalKey<FormState>();
  CreditCardModel creditCardInfo = emptyCreditCard();
  // Stores action output result for [Braintree Payment] action in Button widget.
  String? transactionId;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
