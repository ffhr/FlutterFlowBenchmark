import 'package:flutter/material.dart';
import "package:shadcn_u_i_kit_v48jv9/backend/schema/structs/index.dart"
    as shadcn_u_i_kit_v48jv9_data_schema;
import "package:shadcn_u_i_kit_v48jv9/backend/schema/enums/enums.dart"
    as shadcn_u_i_kit_v48jv9_enums;
import 'backend/supabase/supabase.dart';
import '/backend/sqlite/sqlite_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _DataTableStrings = [
    'Hello World1',
    'Hello World2',
    'Hello World3',
    'Hello World4',
    'Hello World5'
  ];
  List<String> get DataTableStrings => _DataTableStrings;
  set DataTableStrings(List<String> value) {
    _DataTableStrings = value;
  }

  void addToDataTableStrings(String value) {
    DataTableStrings.add(value);
  }

  void removeFromDataTableStrings(String value) {
    DataTableStrings.remove(value);
  }

  void removeAtIndexFromDataTableStrings(int index) {
    DataTableStrings.removeAt(index);
  }

  void updateDataTableStringsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    DataTableStrings[index] = updateFn(_DataTableStrings[index]);
  }

  void insertAtIndexInDataTableStrings(int index, String value) {
    DataTableStrings.insert(index, value);
  }
}
