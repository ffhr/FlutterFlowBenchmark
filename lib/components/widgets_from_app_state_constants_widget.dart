import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:shadcn_u_i_kit_v48jv9/app_state.dart'
    as shadcn_u_i_kit_v48jv9_app_state;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widgets_from_app_state_constants_model.dart';
export 'widgets_from_app_state_constants_model.dart';

class WidgetsFromAppStateConstantsWidget extends StatefulWidget {
  const WidgetsFromAppStateConstantsWidget({super.key});

  @override
  State<WidgetsFromAppStateConstantsWidget> createState() =>
      _WidgetsFromAppStateConstantsWidgetState();
}

class _WidgetsFromAppStateConstantsWidgetState
    extends State<WidgetsFromAppStateConstantsWidget> {
  late WidgetsFromAppStateConstantsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetsFromAppStateConstantsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<shadcn_u_i_kit_v48jv9_app_state.FFAppState>();

    return Builder(
      builder: (context) {
        final widgetCategories = FFAppState().cWidgetCategories.toList();

        return ListView.builder(
          padding: EdgeInsets.fromLTRB(
            0,
            0,
            0,
            128.0,
          ),
          scrollDirection: Axis.vertical,
          itemCount: widgetCategories.length,
          itemBuilder: (context, widgetCategoriesIndex) {
            final widgetCategoriesItem =
                widgetCategories[widgetCategoriesIndex];
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: Text(
                      widgetCategoriesItem.title,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Geist',
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
              ),
              content: Builder(
                builder: (context) {
                  final widgets = FFAppState()
                      .cWidgets
                      .where(
                          (e) => widgetCategoriesItem.id == e.widgetCategoryId)
                      .toList()
                      .sortedList(keyOf: (e) => e.order, desc: false)
                      .toList();

                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(widgets.length, (widgetsIndex) {
                      final widgetsItem = widgets[widgetsIndex];
                      return Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
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
                                  widgetsItem.id,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                              queryParameters: {
                                'widgetTitle': serializeParam(
                                  widgetsItem.title,
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
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            (String input) {
                                              return input.isEmpty
                                                  ? '?'
                                                  : input[0].toUpperCase();
                                            }(widgetsItem.title),
                                            '?',
                                          ),
                                          style: FlutterFlowTheme.of(context)
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
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            widgetsItem.title,
                                            style: FlutterFlowTheme.of(context)
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
  }
}
