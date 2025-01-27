import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_pin_code_model.dart';
export 'widget_pin_code_model.dart';

class WidgetPinCodeWidget extends StatefulWidget {
  const WidgetPinCodeWidget({
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
  State<WidgetPinCodeWidget> createState() => _WidgetPinCodeWidgetState();
}

class _WidgetPinCodeWidgetState extends State<WidgetPinCodeWidget> {
  late WidgetPinCodeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetPinCodeModel());

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
            alignment: AlignmentDirectional(0.0, 0.0),
            child: PinCodeTextField(
              autoDisposeControllers: false,
              appContext: context,
              length: 6,
              textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Geist',
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              enableActiveFill: false,
              autoFocus: true,
              enablePinAutofill: false,
              errorTextSpace: 16.0,
              showCursor: true,
              cursorColor: FlutterFlowTheme.of(context).primary,
              obscureText: false,
              hintCharacter: '●',
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                fieldHeight: 44.0,
                fieldWidth: 44.0,
                borderWidth: 2.0,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
                shape: PinCodeFieldShape.box,
                activeColor: FlutterFlowTheme.of(context).primaryText,
                inactiveColor: FlutterFlowTheme.of(context).alternate,
                selectedColor: FlutterFlowTheme.of(context).primary,
              ),
              controller: _model.pinCodeController,
              onChanged: (_) {},
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: _model.pinCodeControllerValidator.asValidator(context),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
