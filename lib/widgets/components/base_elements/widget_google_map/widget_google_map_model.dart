import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:shadcn_u_i_kit_v48jv9/app_state.dart'
    as shadcn_u_i_kit_v48jv9_app_state;
import 'widget_google_map_widget.dart' show WidgetGoogleMapWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WidgetGoogleMapModel extends FlutterFlowModel<WidgetGoogleMapWidget> {
  ///  Local state fields for this component.

  List<LatLng> latLng = [];
  void addToLatLng(LatLng item) => latLng.add(item);
  void removeFromLatLng(LatLng item) => latLng.remove(item);
  void removeAtIndexFromLatLng(int index) => latLng.removeAt(index);
  void insertAtIndexInLatLng(int index, LatLng item) =>
      latLng.insert(index, item);
  void updateLatLngAtIndex(int index, Function(LatLng) updateFn) =>
      latLng[index] = updateFn(latLng[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
