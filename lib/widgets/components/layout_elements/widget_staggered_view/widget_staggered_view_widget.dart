import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_staggered_view_model.dart';
export 'widget_staggered_view_model.dart';

class WidgetStaggeredViewWidget extends StatefulWidget {
  const WidgetStaggeredViewWidget({
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
  State<WidgetStaggeredViewWidget> createState() =>
      _WidgetStaggeredViewWidgetState();
}

class _WidgetStaggeredViewWidgetState extends State<WidgetStaggeredViewWidget> {
  late WidgetStaggeredViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetStaggeredViewModel());

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
            height: 400.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: MasonryGridView.builder(
                      gridDelegate:
                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return [
                          () => Container(
                                width: 150.0,
                                height: 200.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        'https://picsum.photos/seed/209/600',
                                        width: 150.0,
                                        height: 130.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      'title 1 ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Geist',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Text(
                                      'description 1',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Geist',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ]
                                      .divide(SizedBox(height: 8.0))
                                      .around(SizedBox(height: 8.0)),
                                ),
                              ),
                          () => Container(
                                width: 150.0,
                                height: 120.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1514876246314-d9a231ea21db?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxmaXJld29ya3N8ZW58MHx8fHwxNzM3MDQ4MTY3fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                        width: 150.0,
                                        height: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      'title 2',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Geist',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Text(
                                      'description 2',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Geist',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ]
                                      .divide(SizedBox(height: 8.0))
                                      .around(SizedBox(height: 8.0)),
                                ),
                              ),
                          () => Container(
                                width: 150.0,
                                height: 200.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1439556838232-994e4c0d3b7c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw1fHxmaXJld29ya3N8ZW58MHx8fHwxNzM3MDQ4MTY3fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                        width: 150.0,
                                        height: 130.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      'title 3',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Geist',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Text(
                                      'description 3',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Geist',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ]
                                      .divide(SizedBox(height: 8.0))
                                      .around(SizedBox(height: 8.0)),
                                ),
                              ),
                          () => Container(
                                width: 150.0,
                                height: 110.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1532290082932-ad87f0fae36f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw2fHxmaXJld29ya3N8ZW58MHx8fHwxNzM3MDQ4MTY3fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                        width: 150.0,
                                        height: 40.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      'title 4',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Geist',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Text(
                                      'description 4',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Geist',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ]
                                      .divide(SizedBox(height: 8.0))
                                      .around(SizedBox(height: 8.0)),
                                ),
                              ),
                        ][index]();
                      },
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 24.0)),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
