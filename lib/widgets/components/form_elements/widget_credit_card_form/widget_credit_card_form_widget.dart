import '/backend/braintree/payment_manager.dart';
import '/flutter_flow/flutter_flow_credit_card_form.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
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
            width: 500.0,
            height: 600.0,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: FlutterFlowCreditCardForm(
                    formKey: _model.creditCardFormKey,
                    creditCardModel: _model.creditCardInfo,
                    obscureNumber: true,
                    obscureCvv: true,
                    spacing: 12.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Geist',
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                    inputDecoration: InputDecoration(
                      filled: true,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    if (isWeb) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'ERROR: Braintree is not supported on web platform.',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).tertiary,
                        ),
                      );
                    } else {
                      final transacAmount = computeTotal(
                        20.0,
                        taxRate: 20.0,
                        shippingCost: 20.0,
                      );
                      final transacDisplayName = 'Make a Payment';
                      if (kIsWeb) {
                        showSnackbar(
                            context, 'Payments not yet supported on web.');
                        return;
                      }

                      final dropInRequest = BraintreeDropInRequest(
                        cardEnabled: true,
                        clientToken: braintreeClientToken(),
                        collectDeviceData: true,
                        paypalRequest: BraintreePayPalRequest(
                          amount: transacAmount.toString(),
                          currencyCode: 'USD',
                          displayName: transacDisplayName,
                        ),
                      );
                      final dropInResult =
                          await BraintreeDropIn.start(dropInRequest);
                      if (dropInResult == null) {
                        return;
                      }
                      showSnackbar(
                        context,
                        'Processing payment...',
                        duration: 10,
                        loading: true,
                      );
                      final paymentResponse = await processBraintreePayment(
                        transacAmount,
                        dropInResult.paymentMethodNonce.nonce,
                        dropInResult.deviceData,
                      );
                      if (paymentResponse.errorMessage != null) {
                        showSnackbar(
                            context, 'Error: ${paymentResponse.errorMessage}');
                        return;
                      }
                      showSnackbar(context, 'Success!');
                      _model.transactionId = paymentResponse.transactionId!;
                    }

                    safeSetState(() {});
                  },
                  text: FFLocalizations.of(context).getText(
                    'kxvlams2' /* Make a Payment */,
                  ),
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Geist',
                          color: Colors.white,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(8.0),
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
