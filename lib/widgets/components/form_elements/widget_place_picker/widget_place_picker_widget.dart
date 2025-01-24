import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:io';
import 'dart:ui';
import 'package:map_launcher/map_launcher.dart' as $ml;
import 'package:shadcn_u_i_kit_v48jv9/app_state.dart'
    as shadcn_u_i_kit_v48jv9_app_state;
import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'widget_place_picker_model.dart';
export 'widget_place_picker_model.dart';

class WidgetPlacePickerWidget extends StatefulWidget {
  const WidgetPlacePickerWidget({
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
  State<WidgetPlacePickerWidget> createState() =>
      _WidgetPlacePickerWidgetState();
}

class _WidgetPlacePickerWidgetState extends State<WidgetPlacePickerWidget> {
  late WidgetPlacePickerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetPlacePickerModel());

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
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 500.0,
              height: MediaQuery.sizeOf(context).height * 0.8,
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Container(
                              width: 450.0,
                              height: 450.0,
                              decoration: BoxDecoration(),
                              child: FlutterFlowGoogleMap(
                                controller: _model.googleMapsController,
                                onCameraIdle: (latLng) => safeSetState(
                                    () => _model.googleMapsCenter = latLng),
                                initialLocation: _model.googleMapsCenter ??=
                                    _model.placePickerValue1.name == null ||
                                            _model.placePickerValue1.name == ''
                                        ? FFAppState().latlng.firstOrNull!
                                        : _model.placePickerValue1.latLng,
                                markers: FFAppState()
                                    .latlng
                                    .map(
                                      (marker) => FlutterFlowMarker(
                                        marker.serialize(),
                                        marker,
                                        () async {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return WebViewAware(
                                                child: AlertDialog(
                                                  title: Text(_model
                                                      .placePickerValue1.name),
                                                  content: Text(
                                                      'Informations about selectd place: '),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: Text('Ok'),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    )
                                    .toList(),
                                markerColor: GoogleMarkerColor.violet,
                                mapType: MapType.normal,
                                style: GoogleMapStyle.standard,
                                initialZoom: 13.0,
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
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsets.all(50.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: FlutterFlowPlacePicker(
                                      iOSGoogleMapsApiKey:
                                          'AIzaSyBvMXvnbE0BANO6bBRiULEGLyKVRMnSeuE',
                                      androidGoogleMapsApiKey:
                                          'AIzaSyDfWKzeerlW2fpRsGGX0MFPelpR3229gZY',
                                      webGoogleMapsApiKey:
                                          'AIzaSyCxzNpSrxtVZu6myiTlynwmNp3Xa_qCCUs',
                                      onSelect: (place) async {
                                        safeSetState(() =>
                                            _model.placePickerValue1 = place);
                                        (await _model
                                                .googleMapsController.future)
                                            .animateCamera(
                                                CameraUpdate.newLatLng(place
                                                    .latLng
                                                    .toGoogleMaps()));
                                      },
                                      defaultText:
                                          FFLocalizations.of(context).getText(
                                        'c7ljds6w' /* Select Location */,
                                      ),
                                      icon: Icon(
                                        Icons.place,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 16.0,
                                      ),
                                      buttonOptions: FFButtonOptions(
                                        width: 200.0,
                                        height: 40.0,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Geist',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 8.0,
                                      buttonSize: 40.0,
                                      fillColor:
                                          FlutterFlowTheme.of(context).primary,
                                      icon: Icon(
                                        Icons.search_sharp,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        await launchMap(
                                          address:
                                              _model.placePickerValue1.address,
                                          title: _model.googleMapsCenter!
                                              .toString(),
                                        );
                                      },
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 500.0,
                      height: 150.0,
                      decoration: BoxDecoration(),
                      child: Wrap(
                        spacing: 16.0,
                        runSpacing: 16.0,
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.center,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          FlutterFlowPlacePicker(
                            iOSGoogleMapsApiKey:
                                'AIzaSyBvMXvnbE0BANO6bBRiULEGLyKVRMnSeuE',
                            androidGoogleMapsApiKey:
                                'AIzaSyDfWKzeerlW2fpRsGGX0MFPelpR3229gZY',
                            webGoogleMapsApiKey:
                                'AIzaSyCxzNpSrxtVZu6myiTlynwmNp3Xa_qCCUs',
                            onSelect: (place) async {
                              safeSetState(
                                  () => _model.placePickerValue2 = place);
                            },
                            defaultText: FFLocalizations.of(context).getText(
                              '026yd11t' /* Choose Location */,
                            ),
                            icon: Icon(
                              Icons.place_outlined,
                              color: FlutterFlowTheme.of(context).info,
                              size: 20.0,
                            ),
                            buttonOptions: FFButtonOptions(
                              width: 200.0,
                              height: 40.0,
                              color: FlutterFlowTheme.of(context).secondary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Geist',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                              elevation: 5.0,
                              borderSide: BorderSide(
                                color: Color(0xFF125AF8),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          FlutterFlowPlacePicker(
                            iOSGoogleMapsApiKey:
                                'AIzaSyBvMXvnbE0BANO6bBRiULEGLyKVRMnSeuE',
                            androidGoogleMapsApiKey:
                                'AIzaSyDfWKzeerlW2fpRsGGX0MFPelpR3229gZY',
                            webGoogleMapsApiKey:
                                'AIzaSyCxzNpSrxtVZu6myiTlynwmNp3Xa_qCCUs',
                            onSelect: (place) async {
                              safeSetState(
                                  () => _model.placePickerValue3 = place);
                            },
                            defaultText: FFLocalizations.of(context).getText(
                              '2piqdxl4' /*  Loc */,
                            ),
                            icon: Icon(
                              Icons.place_outlined,
                              color: FlutterFlowTheme.of(context).info,
                              size: 18.0,
                            ),
                            buttonOptions: FFButtonOptions(
                              width: 80.0,
                              height: 40.0,
                              color: FlutterFlowTheme.of(context).alternate,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Geist',
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                              elevation: 5.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          FlutterFlowPlacePicker(
                            iOSGoogleMapsApiKey:
                                'AIzaSyBvMXvnbE0BANO6bBRiULEGLyKVRMnSeuE',
                            androidGoogleMapsApiKey:
                                'AIzaSyDfWKzeerlW2fpRsGGX0MFPelpR3229gZY',
                            webGoogleMapsApiKey:
                                'AIzaSyCxzNpSrxtVZu6myiTlynwmNp3Xa_qCCUs',
                            onSelect: (place) async {
                              safeSetState(
                                  () => _model.placePickerValue4 = place);
                            },
                            defaultText: FFLocalizations.of(context).getText(
                              'ml187elt' /* Location */,
                            ),
                            icon: Icon(
                              Icons.place_outlined,
                              color: FlutterFlowTheme.of(context).info,
                              size: 16.0,
                            ),
                            buttonOptions: FFButtonOptions(
                              width: 100.0,
                              height: 30.0,
                              color: FlutterFlowTheme.of(context).tertiary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Geist',
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                              elevation: 10.0,
                              borderSide: BorderSide(
                                color: Color(0xFFEC0639),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ),
          ].divide(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
