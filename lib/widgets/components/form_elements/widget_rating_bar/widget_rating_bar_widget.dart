import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_rating_bar_model.dart';
export 'widget_rating_bar_model.dart';

class WidgetRatingBarWidget extends StatefulWidget {
  const WidgetRatingBarWidget({
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
  State<WidgetRatingBarWidget> createState() => _WidgetRatingBarWidgetState();
}

class _WidgetRatingBarWidgetState extends State<WidgetRatingBarWidget> {
  late WidgetRatingBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetRatingBarModel());

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
            height: 600.0,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: RatingBar.builder(
                    onRatingUpdate: (newValue) =>
                        safeSetState(() => _model.ratingBarValue1 = newValue),
                    itemBuilder: (context, index) => Icon(
                      Icons.star_rounded,
                      color: FlutterFlowTheme.of(context).warning,
                    ),
                    direction: Axis.horizontal,
                    initialRating: _model.ratingBarValue1 ??= 3.0,
                    unratedColor: Color(0x95FACC17),
                    itemCount: 5,
                    itemSize: 24.0,
                    glowColor: FlutterFlowTheme.of(context).warning,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: RatingBar.builder(
                    onRatingUpdate: (newValue) =>
                        safeSetState(() => _model.ratingBarValue2 = newValue),
                    itemBuilder: (context, index) => Icon(
                      Icons.star_rounded,
                      color: Color(0xFFFA8017),
                    ),
                    direction: Axis.horizontal,
                    initialRating: _model.ratingBarValue2 ??= 5.0,
                    unratedColor: Color(0x85FA8017),
                    itemCount: 7,
                    itemSize: 32.0,
                    glowColor: Color(0xFFFA8017),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: RatingBar.builder(
                    onRatingUpdate: (newValue) =>
                        safeSetState(() => _model.ratingBarValue3 = newValue),
                    itemBuilder: (context, index) => Icon(
                      Icons.star_rounded,
                      color: FlutterFlowTheme.of(context).secondary,
                    ),
                    direction: Axis.vertical,
                    initialRating: _model.ratingBarValue3 ??= 3.0,
                    unratedColor: Color(0x882563EB),
                    itemCount: 5,
                    itemSize: 48.0,
                    glowColor: FlutterFlowTheme.of(context).secondary,
                  ),
                ),
              ].divide(SizedBox(height: 8.0)).around(SizedBox(height: 8.0)),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
