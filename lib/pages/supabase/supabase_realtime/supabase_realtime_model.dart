import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'dart:async';
import 'supabase_realtime_widget.dart' show SupabaseRealtimeWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SupabaseRealtimeModel extends FlutterFlowModel<SupabaseRealtimeWidget> {
  ///  Local state fields for this page.

  List<StudentsRow> studentsIsActiveTrue = [];
  void addToStudentsIsActiveTrue(StudentsRow item) =>
      studentsIsActiveTrue.add(item);
  void removeFromStudentsIsActiveTrue(StudentsRow item) =>
      studentsIsActiveTrue.remove(item);
  void removeAtIndexFromStudentsIsActiveTrue(int index) =>
      studentsIsActiveTrue.removeAt(index);
  void insertAtIndexInStudentsIsActiveTrue(int index, StudentsRow item) =>
      studentsIsActiveTrue.insert(index, item);
  void updateStudentsIsActiveTrueAtIndex(
          int index, Function(StudentsRow) updateFn) =>
      studentsIsActiveTrue[index] = updateFn(studentsIsActiveTrue[index]);

  List<StudentsRow> studentsIsActiveFalse = [];
  void addToStudentsIsActiveFalse(StudentsRow item) =>
      studentsIsActiveFalse.add(item);
  void removeFromStudentsIsActiveFalse(StudentsRow item) =>
      studentsIsActiveFalse.remove(item);
  void removeAtIndexFromStudentsIsActiveFalse(int index) =>
      studentsIsActiveFalse.removeAt(index);
  void insertAtIndexInStudentsIsActiveFalse(int index, StudentsRow item) =>
      studentsIsActiveFalse.insert(index, item);
  void updateStudentsIsActiveFalseAtIndex(
          int index, Function(StudentsRow) updateFn) =>
      studentsIsActiveFalse[index] = updateFn(studentsIsActiveFalse[index]);

  ///  State fields for stateful widgets in this page.

  Stream<List<StudentsRow>>? rowIsActiveAllRealtimeSupabaseStream;
  Completer<List<StudentsRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future refreshSupabaseResults(BuildContext context) async {
    List<StudentsRow>? sbOutputStudentsIsActiveTrue;
    List<StudentsRow>? sbOutputStudentsIsActiveFalse;

    await Future.wait([
      Future(() async {
        // from students is_active=true
        sbOutputStudentsIsActiveTrue = await StudentsTable().queryRows(
          queryFn: (q) => q
              .eqOrNull(
                'is_active',
                true,
              )
              .eqOrNull(
                'is_visible',
                true,
              )
              .order('order', ascending: true),
        );
        // studentsIsActiveTrue=outputStudentsIsActiveTrue
        studentsIsActiveTrue =
            sbOutputStudentsIsActiveTrue!.toList().cast<StudentsRow>();
      }),
      Future(() async {
        // from students is_active=false
        sbOutputStudentsIsActiveFalse = await StudentsTable().queryRows(
          queryFn: (q) => q
              .eqOrNull(
                'is_active',
                false,
              )
              .eqOrNull(
                'is_visible',
                true,
              )
              .order('order', ascending: true),
        );
        // studentsIsActiveFalse=outputStudentsIsActiveFalse
        studentsIsActiveFalse =
            sbOutputStudentsIsActiveFalse!.toList().cast<StudentsRow>();
      }),
    ]);
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
