import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'dart:async';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'supabase_realtime_model.dart';
export 'supabase_realtime_model.dart';

class SupabaseRealtimeWidget extends StatefulWidget {
  const SupabaseRealtimeWidget({super.key});

  @override
  State<SupabaseRealtimeWidget> createState() => _SupabaseRealtimeWidgetState();
}

class _SupabaseRealtimeWidgetState extends State<SupabaseRealtimeWidget> {
  late SupabaseRealtimeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SupabaseRealtimeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await _model.refreshSupabaseResults(context);
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Supabase Realtime',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'is_active=true',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: Builder(
                    builder: (context) {
                      final listStudentsIsActiveTrue =
                          _model.studentsIsActiveTrue.toList();

                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(listStudentsIsActiveTrue.length,
                            (listStudentsIsActiveTrueIndex) {
                          final listStudentsIsActiveTrueItem =
                              listStudentsIsActiveTrue[
                                  listStudentsIsActiveTrueIndex];
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  listStudentsIsActiveTrueItem.name,
                                  'n/a',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  listStudentsIsActiveTrueItem.order.toString(),
                                  'n/a',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  listStudentsIsActiveTrueItem.isActive
                                      ?.toString(),
                                  'n/a',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  // set is_active=false
                                  await StudentsTable().update(
                                    data: {
                                      'is_active': false,
                                    },
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'id',
                                      listStudentsIsActiveTrueItem.id,
                                    ),
                                  );
                                  await _model.refreshSupabaseResults(context);
                                  safeSetState(() {});
                                },
                                text: 'SET is_active=false',
                                options: FFButtonOptions(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4.0, 0.0, 4.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Inter Tight',
                                        color: Colors.white,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                              ),
                            ],
                          );
                        }).divide(SizedBox(width: 10.0)),
                      );
                    },
                  ),
                ),
                Text(
                  'is_active=false',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: Builder(
                    builder: (context) {
                      final listStudentsIsActiveFalse =
                          _model.studentsIsActiveFalse.toList();

                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        children:
                            List.generate(listStudentsIsActiveFalse.length,
                                (listStudentsIsActiveFalseIndex) {
                          final listStudentsIsActiveFalseItem =
                              listStudentsIsActiveFalse[
                                  listStudentsIsActiveFalseIndex];
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  listStudentsIsActiveFalseItem.name,
                                  'n/a',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  listStudentsIsActiveFalseItem.order
                                      .toString(),
                                  'n/a',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  listStudentsIsActiveFalseItem.isActive
                                      ?.toString(),
                                  'n/a',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  // set is_active=false
                                  await StudentsTable().update(
                                    data: {
                                      'is_active': true,
                                    },
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'id',
                                      listStudentsIsActiveFalseItem.id,
                                    ),
                                  );
                                  await _model.refreshSupabaseResults(context);
                                  safeSetState(() {});
                                },
                                text: 'SET is_active=true',
                                options: FFButtonOptions(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4.0, 0.0, 4.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Inter Tight',
                                        color: Colors.white,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                              ),
                            ],
                          );
                        }).divide(SizedBox(width: 10.0)),
                      );
                    },
                  ),
                ),
                Text(
                  'realtime_all',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: StreamBuilder<List<StudentsRow>>(
                    stream: _model.rowIsActiveAllRealtimeSupabaseStream ??=
                        SupaFlow.client
                            .from("students")
                            .stream(primaryKey: ['id'])
                            .eqOrNull(
                              'is_visible',
                              true,
                            )
                            .order('order', ascending: true)
                            .map((list) =>
                                list.map((item) => StudentsRow(item)).toList()),
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
                      List<StudentsRow> rowIsActiveAllRealtimeStudentsRowList =
                          snapshot.data!;

                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            rowIsActiveAllRealtimeStudentsRowList.length,
                            (rowIsActiveAllRealtimeIndex) {
                          final rowIsActiveAllRealtimeStudentsRow =
                              rowIsActiveAllRealtimeStudentsRowList[
                                  rowIsActiveAllRealtimeIndex];
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  rowIsActiveAllRealtimeStudentsRow.name,
                                  'n/a',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  rowIsActiveAllRealtimeStudentsRow.order
                                      .toString(),
                                  'n/a',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                rowIsActiveAllRealtimeStudentsRow.isActive!
                                    .toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              if (!rowIsActiveAllRealtimeStudentsRow.isActive!)
                                FFButtonWidget(
                                  onPressed: () async {
                                    // set is_active=false
                                    await StudentsTable().update(
                                      data: {
                                        'is_active': true,
                                      },
                                      matchingRows: (rows) => rows.eqOrNull(
                                        'id',
                                        rowIsActiveAllRealtimeStudentsRow.id,
                                      ),
                                    );
                                  },
                                  text: 'SET is_active=true',
                                  options: FFButtonOptions(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 0.0, 4.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Inter Tight',
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                              if (rowIsActiveAllRealtimeStudentsRow.isActive ??
                                  true)
                                FFButtonWidget(
                                  onPressed: () async {
                                    // set is_active=false
                                    await StudentsTable().update(
                                      data: {
                                        'is_active': false,
                                      },
                                      matchingRows: (rows) => rows.eqOrNull(
                                        'id',
                                        rowIsActiveAllRealtimeStudentsRow.id,
                                      ),
                                    );
                                  },
                                  text: 'SET is_active=false',
                                  options: FFButtonOptions(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 0.0, 4.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Inter Tight',
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                            ],
                          );
                        }).divide(SizedBox(width: 10.0)),
                      );
                    },
                  ),
                ),
                Text(
                  'single_time_query',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: FutureBuilder<List<StudentsRow>>(
                    future: (_model.requestCompleter ??=
                            Completer<List<StudentsRow>>()
                              ..complete(StudentsTable().queryRows(
                                queryFn: (q) => q
                                    .eqOrNull(
                                      'is_visible',
                                      true,
                                    )
                                    .order('order', ascending: true),
                              )))
                        .future,
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
                      List<StudentsRow> rowIsActiveAllRealtimeStudentsRowList =
                          snapshot.data!;

                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            rowIsActiveAllRealtimeStudentsRowList.length,
                            (rowIsActiveAllRealtimeIndex) {
                          final rowIsActiveAllRealtimeStudentsRow =
                              rowIsActiveAllRealtimeStudentsRowList[
                                  rowIsActiveAllRealtimeIndex];
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  rowIsActiveAllRealtimeStudentsRow.name,
                                  'n/a',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  rowIsActiveAllRealtimeStudentsRow.order
                                      .toString(),
                                  'n/a',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                rowIsActiveAllRealtimeStudentsRow.isActive!
                                    .toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              if (!rowIsActiveAllRealtimeStudentsRow.isActive!)
                                FFButtonWidget(
                                  onPressed: () async {
                                    // set is_active=false
                                    await StudentsTable().update(
                                      data: {
                                        'is_active': true,
                                      },
                                      matchingRows: (rows) => rows.eqOrNull(
                                        'id',
                                        rowIsActiveAllRealtimeStudentsRow.id,
                                      ),
                                    );
                                    safeSetState(
                                        () => _model.requestCompleter = null);
                                    await _model.waitForRequestCompleted();
                                  },
                                  text: 'SET is_active=true',
                                  options: FFButtonOptions(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 0.0, 4.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Inter Tight',
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                              if (rowIsActiveAllRealtimeStudentsRow.isActive ??
                                  true)
                                FFButtonWidget(
                                  onPressed: () async {
                                    // set is_active=false
                                    await StudentsTable().update(
                                      data: {
                                        'is_active': false,
                                      },
                                      matchingRows: (rows) => rows.eqOrNull(
                                        'id',
                                        rowIsActiveAllRealtimeStudentsRow.id,
                                      ),
                                    );
                                    safeSetState(
                                        () => _model.requestCompleter = null);
                                    await _model.waitForRequestCompleted();
                                  },
                                  text: 'SET is_active=false',
                                  options: FFButtonOptions(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 0.0, 4.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Inter Tight',
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                            ],
                          );
                        }).divide(SizedBox(width: 10.0)),
                      );
                    },
                  ),
                ),
              ]
                  .addToStart(SizedBox(height: 20.0))
                  .addToEnd(SizedBox(height: 128.0)),
            ),
          ),
        ),
      ),
    );
  }
}
