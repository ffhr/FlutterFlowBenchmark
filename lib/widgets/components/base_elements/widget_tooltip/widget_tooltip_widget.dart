import '/components/tooltip_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_tooltip_model.dart';
export 'widget_tooltip_model.dart';

class WidgetTooltipWidget extends StatefulWidget {
  const WidgetTooltipWidget({
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
  State<WidgetTooltipWidget> createState() => _WidgetTooltipWidgetState();
}

class _WidgetTooltipWidgetState extends State<WidgetTooltipWidget> {
  late WidgetTooltipModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetTooltipModel());

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
            child: AlignedTooltip(
              content: Padding(
                padding: EdgeInsets.all(4.0),
                child: Container(
                  width: 250.0,
                  child: TooltipWidget(
                    title: 'How to buy a book?',
                    description:
                        'First you need to create an account, then verify your email. After your email is verified, you will be taken to a page where you need to fill out a form with your personal information and submit your order.',
                  ),
                ),
              ),
              offset: 4.0,
              preferredDirection: AxisDirection.up,
              borderRadius: BorderRadius.circular(8.0),
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 4.0,
              tailBaseWidth: 24.0,
              tailLength: 12.0,
              waitDuration: Duration(milliseconds: 100),
              showDuration: Duration(milliseconds: 1500),
              triggerMode: TooltipTriggerMode.tap,
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(
                  Icons.question_mark,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 32.0,
                ),
              ),
            ),
          ),
          Container(
            width: 300.0,
            height: 100.0,
            decoration: BoxDecoration(),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: AlignedTooltip(
              content: Padding(
                padding: EdgeInsets.all(4.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'hpowlwkb' /* To create an account, you need... */,
                  ),
                  style: TextStyle(
                    fontFamily: 'Geist',
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
              offset: 8.0,
              preferredDirection: AxisDirection.down,
              borderRadius: BorderRadius.circular(8.0),
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 4.0,
              tailBaseWidth: 32.0,
              tailLength: 16.0,
              waitDuration: Duration(milliseconds: 100),
              showDuration: Duration(milliseconds: 1500),
              triggerMode: TooltipTriggerMode.longPress,
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(
                  Icons.door_front_door_outlined,
                  color: FlutterFlowTheme.of(context).secondary,
                  size: 48.0,
                ),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onLongPress: () async {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Sucess!',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                  ),
                  duration: Duration(milliseconds: 4000),
                  backgroundColor: FlutterFlowTheme.of(context).success,
                ),
              );
            },
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: FFLocalizations.of(context).getText(
                '5yp258yn' /* Sign In */,
              ),
              options: FFButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Geist',
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
                elevation: 0.0,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
