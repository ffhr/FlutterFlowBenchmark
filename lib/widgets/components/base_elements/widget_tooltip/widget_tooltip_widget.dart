import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: AlignedTooltip(
                content: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'qtk4q1pu' /* How to use Tooltip? */,
                    ),
                    style: TextStyle(
                      fontFamily: 'Geist',
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                  ),
                ),
                offset: 4.0,
                preferredDirection: AxisDirection.down,
                borderRadius: BorderRadius.circular(8.0),
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 4.0,
                tailBaseWidth: 24.0,
                tailLength: 12.0,
                waitDuration: Duration(milliseconds: 100),
                showDuration: Duration(milliseconds: 1500),
                triggerMode: TooltipTriggerMode.tap,
                child: FaIcon(
                  FontAwesomeIcons.solidQuestionCircle,
                  color: FlutterFlowTheme.of(context).alternate,
                  size: 32.0,
                ),
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
