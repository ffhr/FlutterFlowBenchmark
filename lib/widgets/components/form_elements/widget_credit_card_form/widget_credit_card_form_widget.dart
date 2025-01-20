import '/flutter_flow/flutter_flow_credit_card_form.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_credit_card_form_model.dart';
export 'widget_credit_card_form_model.dart';

class WidgetCreditCardFormWidget extends StatefulWidget {
  const WidgetCreditCardFormWidget({
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
  State<WidgetCreditCardFormWidget> createState() =>
      _WidgetCreditCardFormWidgetState();
}

class _WidgetCreditCardFormWidgetState
    extends State<WidgetCreditCardFormWidget> {
  late WidgetCreditCardFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetCreditCardFormModel());

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
            height: 200.0,
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: FlutterFlowCreditCardForm(
                formKey: _model.creditCardFormKey,
                creditCardModel: _model.creditCardInfo,
                obscureNumber: true,
                obscureCvv: false,
                spacing: 12.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Geist',
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
                inputDecoration: InputDecoration(
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).secondary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).secondary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
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
