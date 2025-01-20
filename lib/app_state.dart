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

  List<LatLng> _latlng = [
    LatLng(34.0522, -118.2437),
    LatLng(48.8566, 2.3522),
    LatLng(-27.4698, 153.0251)
  ];
  List<LatLng> get latlng => _latlng;
  set latlng(List<LatLng> value) {
    _latlng = value;
  }

  void addToLatlng(LatLng value) {
    latlng.add(value);
  }

  void removeFromLatlng(LatLng value) {
    latlng.remove(value);
  }

  void removeAtIndexFromLatlng(int index) {
    latlng.removeAt(index);
  }

  void updateLatlngAtIndex(
    int index,
    LatLng Function(LatLng) updateFn,
  ) {
    latlng[index] = updateFn(_latlng[index]);
  }

  void insertAtIndexInLatlng(int index, LatLng value) {
    latlng.insert(index, value);
  }

  List<String> _Images = [
    'https://picsum.photos/seed/628/600',
    'https://picsum.photos/seed/314/600',
    'https://picsum.photos/seed/821/600'
  ];
  List<String> get Images => _Images;
  set Images(List<String> value) {
    _Images = value;
  }

  void addToImages(String value) {
    Images.add(value);
  }

  void removeFromImages(String value) {
    Images.remove(value);
  }

  void removeAtIndexFromImages(int index) {
    Images.removeAt(index);
  }

  void updateImagesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    Images[index] = updateFn(_Images[index]);
  }

  void insertAtIndexInImages(int index, String value) {
    Images.insert(index, value);
  }

  List<int> _capacityList = [1, 2, 3, 4, 5, 6, 7];
  List<int> get capacityList => _capacityList;
  set capacityList(List<int> value) {
    _capacityList = value;
  }

  void addToCapacityList(int value) {
    capacityList.add(value);
  }

  void removeFromCapacityList(int value) {
    capacityList.remove(value);
  }

  void removeAtIndexFromCapacityList(int index) {
    capacityList.removeAt(index);
  }

  void updateCapacityListAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    capacityList[index] = updateFn(_capacityList[index]);
  }

  void insertAtIndexInCapacityList(int index, int value) {
    capacityList.insert(index, value);
  }

  List<String> _BarLabels = ['Jan', 'Feb', 'Mar', 'Apr', 'Mai', 'Jun', 'Jul'];
  List<String> get BarLabels => _BarLabels;
  set BarLabels(List<String> value) {
    _BarLabels = value;
  }

  void addToBarLabels(String value) {
    BarLabels.add(value);
  }

  void removeFromBarLabels(String value) {
    BarLabels.remove(value);
  }

  void removeAtIndexFromBarLabels(int index) {
    BarLabels.removeAt(index);
  }

  void updateBarLabelsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    BarLabels[index] = updateFn(_BarLabels[index]);
  }

  void insertAtIndexInBarLabels(int index, String value) {
    BarLabels.insert(index, value);
  }

  bool _liked = false;
  bool get liked => _liked;
  set liked(bool value) {
    _liked = value;
  }
}
