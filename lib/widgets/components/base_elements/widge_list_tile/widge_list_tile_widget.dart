import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widge_list_tile_model.dart';
export 'widge_list_tile_model.dart';

class WidgeListTileWidget extends StatefulWidget {
  const WidgeListTileWidget({
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
  State<WidgeListTileWidget> createState() => _WidgeListTileWidgetState();
}

class _WidgeListTileWidgetState extends State<WidgeListTileWidget> {
  late WidgeListTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgeListTileModel());

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
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Material(
                color: Colors.transparent,
                child: ListTile(
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'o8hfxjxo' /* 5 Ways to Boost Your Productiv... */,
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Geist',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  subtitle: Text(
                    FFLocalizations.of(context).getText(
                      '8vycte8y' /* Simple Strategies for a More F... */,
                    ),
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Geist',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
