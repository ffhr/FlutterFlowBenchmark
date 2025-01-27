import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_button_model.dart';
export 'widget_button_model.dart';

class WidgetButtonWidget extends StatefulWidget {
  const WidgetButtonWidget({
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
  State<WidgetButtonWidget> createState() => _WidgetButtonWidgetState();
}

class _WidgetButtonWidgetState extends State<WidgetButtonWidget> {
  late WidgetButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetButtonModel());

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
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: FFLocalizations.of(context).getText(
                  'ew6ltfk4' /* Button */,
                ),
                icon: Icon(
                  Icons.stop,
                  size: 24.0,
                ),
                options: FFButtonOptions(
                  width: 200.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).secondary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Geist',
                        color: Colors.white,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                  elevation: 2.0,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
