import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_mouse_region_model.dart';
export 'widget_mouse_region_model.dart';

class WidgetMouseRegionWidget extends StatefulWidget {
  const WidgetMouseRegionWidget({
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
  State<WidgetMouseRegionWidget> createState() =>
      _WidgetMouseRegionWidgetState();
}

class _WidgetMouseRegionWidgetState extends State<WidgetMouseRegionWidget> {
  late WidgetMouseRegionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetMouseRegionModel());

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
            child: MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: valueOrDefault<Color>(
                        _model.imageBorder,
                        FlutterFlowTheme.of(context).secondary,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(2.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        'https://picsum.photos/seed/470/600',
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionHovered = true);
                _model.imageBorder = FlutterFlowTheme.of(context).secondary;
                safeSetState(() {});
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionHovered = false);
                _model.imageBorder = FlutterFlowTheme.of(context).tertiary;
                safeSetState(() {});
              }),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
