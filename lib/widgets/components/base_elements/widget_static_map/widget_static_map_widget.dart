import '/flutter_flow/flutter_flow_static_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:mapbox_search/mapbox_search.dart' as mapbox;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_static_map_model.dart';
export 'widget_static_map_model.dart';

class WidgetStaticMapWidget extends StatefulWidget {
  const WidgetStaticMapWidget({
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
  State<WidgetStaticMapWidget> createState() => _WidgetStaticMapWidgetState();
}

class _WidgetStaticMapWidgetState extends State<WidgetStaticMapWidget> {
  late WidgetStaticMapModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetStaticMapModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 500.0,
            height: 200.0,
            decoration: BoxDecoration(),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: FlutterFlowStaticMap(
                location: LatLng(9.341465, -79.891704),
                apiKey:
                    'pk.eyJ1IjoiaGllbmVyNzciLCJhIjoiY20wcHNrb2JmMDRubzJucHdyNjlrczJwayJ9.rNu5shTCNBFmxsCRUUIKlA',
                style: mapbox.MapBoxStyle.Light,
                width: 300.0,
                height: 200.0,
                fit: BoxFit.contain,
                borderRadius: BorderRadius.circular(0.0),
                markerColor: FlutterFlowTheme.of(context).secondary,
                cached: true,
                zoom: 12,
                tilt: 5,
                rotation: 2,
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
