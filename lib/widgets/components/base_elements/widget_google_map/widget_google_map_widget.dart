import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:shadcn_u_i_kit_v48jv9/app_state.dart'
    as shadcn_u_i_kit_v48jv9_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_google_map_model.dart';
export 'widget_google_map_model.dart';

class WidgetGoogleMapWidget extends StatefulWidget {
  const WidgetGoogleMapWidget({
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
  State<WidgetGoogleMapWidget> createState() => _WidgetGoogleMapWidgetState();
}

class _WidgetGoogleMapWidgetState extends State<WidgetGoogleMapWidget> {
  late WidgetGoogleMapModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetGoogleMapModel());

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

    return Container(
      decoration: BoxDecoration(),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 500.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                    child: FlutterFlowGoogleMap(
                      controller: _model.googleMapsController1,
                      onCameraIdle: (latLng) =>
                          safeSetState(() => _model.googleMapsCenter1 = latLng),
                      initialLocation: _model.googleMapsCenter1 ??=
                          FFAppState().latlng.firstOrNull!,
                      markers: FFAppState()
                          .latlng
                          .map(
                            (marker) => FlutterFlowMarker(
                              marker.serialize(),
                              marker,
                            ),
                          )
                          .toList(),
                      markerColor: GoogleMarkerColor.violet,
                      mapType: MapType.normal,
                      style: GoogleMapStyle.standard,
                      initialZoom: 8.0,
                      allowInteraction: true,
                      allowZoom: true,
                      showZoomControls: true,
                      showLocation: true,
                      showCompass: true,
                      showMapToolbar: true,
                      showTraffic: false,
                      centerMapOnMarkerTap: true,
                    ),
                  ),
                  Container(
                    width: 500.0,
                    height: 179.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                    child: FlutterFlowGoogleMap(
                      controller: _model.googleMapsController2,
                      onCameraIdle: (latLng) =>
                          safeSetState(() => _model.googleMapsCenter2 = latLng),
                      initialLocation: _model.googleMapsCenter2 ??=
                          FFAppState().latlng.lastOrNull!,
                      markers: FFAppState()
                          .latlng
                          .map(
                            (marker) => FlutterFlowMarker(
                              marker.serialize(),
                              marker,
                            ),
                          )
                          .toList(),
                      markerColor: GoogleMarkerColor.red,
                      mapType: MapType.hybrid,
                      style: GoogleMapStyle.standard,
                      initialZoom: 10.0,
                      allowInteraction: true,
                      allowZoom: true,
                      showZoomControls: true,
                      showLocation: false,
                      showCompass: true,
                      showMapToolbar: true,
                      showTraffic: false,
                      centerMapOnMarkerTap: true,
                    ),
                  ),
                  Container(
                    width: 500.0,
                    height: 179.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                    child: FlutterFlowGoogleMap(
                      controller: _model.googleMapsController3,
                      onCameraIdle: (latLng) =>
                          safeSetState(() => _model.googleMapsCenter3 = latLng),
                      initialLocation: _model.googleMapsCenter3 ??=
                          FFAppState().latlng.elementAtOrNull(1)!,
                      markers: FFAppState()
                          .latlng
                          .map(
                            (marker) => FlutterFlowMarker(
                              marker.serialize(),
                              marker,
                            ),
                          )
                          .toList(),
                      markerColor: GoogleMarkerColor.violet,
                      markerImage: MarkerImage(
                        imagePath: 'assets/images/icons8-map-100.png',
                        isAssetImage: true,
                        size: 40.0 ?? 20,
                      ),
                      mapType: MapType.terrain,
                      style: GoogleMapStyle.standard,
                      initialZoom: 18.0,
                      allowInteraction: true,
                      allowZoom: true,
                      showZoomControls: true,
                      showLocation: false,
                      showCompass: true,
                      showMapToolbar: true,
                      showTraffic: false,
                      centerMapOnMarkerTap: true,
                    ),
                  ),
                ].divide(SizedBox(height: 16.0)).around(SizedBox(height: 16.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
