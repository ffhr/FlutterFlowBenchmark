import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widgets_from_sql_lite_model.dart';
export 'widgets_from_sql_lite_model.dart';

class WidgetsFromSqlLiteWidget extends StatefulWidget {
  const WidgetsFromSqlLiteWidget({super.key});

  @override
  State<WidgetsFromSqlLiteWidget> createState() =>
      _WidgetsFromSqlLiteWidgetState();
}

class _WidgetsFromSqlLiteWidgetState extends State<WidgetsFromSqlLiteWidget> {
  late WidgetsFromSqlLiteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetsFromSqlLiteModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (isiOS || isAndroid) {
          return FutureBuilder<List<ReadWidgetCategoriesRow>>(
            future: SQLiteManager.instance.readWidgetCategories(),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                );
              }
              final widgetCategoriesReadWidgetCategoriesRowList =
                  snapshot.data!;

              return ListView.builder(
                padding: EdgeInsets.fromLTRB(
                  0,
                  0,
                  0,
                  128.0,
                ),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: widgetCategoriesReadWidgetCategoriesRowList.length,
                itemBuilder: (context, widgetCategoriesIndex) {
                  final widgetCategoriesReadWidgetCategoriesRow =
                      widgetCategoriesReadWidgetCategoriesRowList[
                          widgetCategoriesIndex];
                  return StickyHeader(
                    overlapHeaders: false,
                    header: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 0.0),
                          child: Text(
                            widgetCategoriesReadWidgetCategoriesRow.title,
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Geist',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ),
                    ),
                    content: FutureBuilder<List<ReadWidgetsRow>>(
                      future: SQLiteManager.instance.readWidgets(
                        widgetCategoryRef:
                            widgetCategoriesReadWidgetCategoriesRow.id,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        final columnReadWidgetsRowList = snapshot.data!;

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              columnReadWidgetsRowList.length, (columnIndex) {
                            final columnReadWidgetsRow =
                                columnReadWidgetsRowList[columnIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 1.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'WidgetPage',
                                    pathParameters: {
                                      'slug': serializeParam(
                                        columnReadWidgetsRow.id,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                    queryParameters: {
                                      'widgetTitle': serializeParam(
                                        columnReadWidgetsRow.title,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 0.0,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        offset: Offset(
                                          0.0,
                                          1.0,
                                        ),
                                        spreadRadius: 0.0,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(1.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  (String input) {
                                                    return input.isEmpty
                                                        ? '?'
                                                        : input[0]
                                                            .toUpperCase();
                                                  }(columnReadWidgetsRow.title),
                                                  '?',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Geist',
                                                          color: Colors.white,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: 100.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  columnReadWidgetsRow.title,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Geist',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.chevron_right_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        );
                      },
                    ),
                  );
                },
              );
            },
          );
        } else {
          return Text(
            'SQLite is not supported on this platform!',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Geist',
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
          );
        }
      },
    );
  }
}
