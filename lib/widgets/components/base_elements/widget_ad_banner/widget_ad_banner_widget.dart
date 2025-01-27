import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_ad_banner_model.dart';
export 'widget_ad_banner_model.dart';

class WidgetAdBannerWidget extends StatefulWidget {
  const WidgetAdBannerWidget({
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
  State<WidgetAdBannerWidget> createState() => _WidgetAdBannerWidgetState();
}

class _WidgetAdBannerWidgetState extends State<WidgetAdBannerWidget> {
  late WidgetAdBannerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetAdBannerModel());

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
            height: 300.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
