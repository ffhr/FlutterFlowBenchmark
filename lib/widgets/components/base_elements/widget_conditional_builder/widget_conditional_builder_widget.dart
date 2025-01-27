import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_conditional_builder_model.dart';
export 'widget_conditional_builder_model.dart';

class WidgetConditionalBuilderWidget extends StatefulWidget {
  const WidgetConditionalBuilderWidget({
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
  State<WidgetConditionalBuilderWidget> createState() =>
      _WidgetConditionalBuilderWidgetState();
}

class _WidgetConditionalBuilderWidgetState
    extends State<WidgetConditionalBuilderWidget> {
  late WidgetConditionalBuilderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetConditionalBuilderModel());

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
            height: 250.0,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Builder(
                  builder: (context) {
                    if (_model.isHome == true) {
                      return Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondary,
                          ),
                          child: Icon(
                            Icons.home,
                            color: FlutterFlowTheme.of(context).info,
                            size: 24.0,
                          ),
                        ),
                      );
                    } else {
                      return Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).tertiary,
                          ),
                          child: Icon(
                            Icons.person,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 24.0,
                          ),
                        ),
                      );
                    }
                  },
                ),
                Container(
                  width: 200.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).alternate,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlutterFlowIconButton(
                        borderRadius: 100.0,
                        buttonSize: 40.0,
                        fillColor: FlutterFlowTheme.of(context).secondary,
                        icon: Icon(
                          Icons.home,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          _model.isHome = true;
                          safeSetState(() {});
                        },
                      ),
                      FlutterFlowIconButton(
                        borderRadius: 100.0,
                        buttonSize: 40.0,
                        fillColor: FlutterFlowTheme.of(context).tertiary,
                        icon: Icon(
                          Icons.person,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          _model.isHome = false;
                          safeSetState(() {});
                        },
                      ),
                    ],
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
