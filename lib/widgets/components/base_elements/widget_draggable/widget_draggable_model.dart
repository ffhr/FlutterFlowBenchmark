import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'widget_draggable_widget.dart' show WidgetDraggableWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WidgetDraggableModel extends FlutterFlowModel<WidgetDraggableWidget> {
  ///  Local state fields for this component.

  String? dragStatus;

  List<String> answers = ['Paris', 'Zagreb', 'Madrid', 'Berlin'];
  void addToAnswers(String item) => answers.add(item);
  void removeFromAnswers(String item) => answers.remove(item);
  void removeAtIndexFromAnswers(int index) => answers.removeAt(index);
  void insertAtIndexInAnswers(int index, String item) =>
      answers.insert(index, item);
  void updateAnswersAtIndex(int index, Function(String) updateFn) =>
      answers[index] = updateFn(answers[index]);

  bool answerCorrect = false;

  int activeSheet = -1;

  List<String> countries = ['Spain', 'Italy', 'Portugal', 'England'];
  void addToCountries(String item) => countries.add(item);
  void removeFromCountries(String item) => countries.remove(item);
  void removeAtIndexFromCountries(int index) => countries.removeAt(index);
  void insertAtIndexInCountries(int index, String item) =>
      countries.insert(index, item);
  void updateCountriesAtIndex(int index, Function(String) updateFn) =>
      countries[index] = updateFn(countries[index]);

  List<String> cities = ['Lisbon', 'Rome', 'London', 'Madrid'];
  void addToCities(String item) => cities.add(item);
  void removeFromCities(String item) => cities.remove(item);
  void removeAtIndexFromCities(int index) => cities.removeAt(index);
  void insertAtIndexInCities(int index, String item) =>
      cities.insert(index, item);
  void updateCitiesAtIndex(int index, Function(String) updateFn) =>
      cities[index] = updateFn(cities[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
