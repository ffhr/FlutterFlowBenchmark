import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_switch_list_tile_model.dart';
export 'widget_switch_list_tile_model.dart';

class WidgetSwitchListTileWidget extends StatefulWidget {
  const WidgetSwitchListTileWidget({
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
  State<WidgetSwitchListTileWidget> createState() =>
      _WidgetSwitchListTileWidgetState();
}

class _WidgetSwitchListTileWidgetState
    extends State<WidgetSwitchListTileWidget> {
  late WidgetSwitchListTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetSwitchListTileModel());

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
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Material(
                  color: Colors.transparent,
                  child: SwitchListTile.adaptive(
                    value: _model.switchListTileValue1 ??= true,
                    onChanged: (newValue) async {
                      safeSetState(
                          () => _model.switchListTileValue1 = newValue!);
                    },
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'gv9ekzfq' /* Title */,
                      ),
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Geist',
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        'p8cvt71m' /* Subtitle */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Geist',
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    activeColor: FlutterFlowTheme.of(context).secondary,
                    activeTrackColor: FlutterFlowTheme.of(context).primary,
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: SwitchListTile(
                    value: _model.switchListTileValue2 ??= true,
                    onChanged: (newValue) async {
                      safeSetState(
                          () => _model.switchListTileValue2 = newValue!);
                    },
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'tui8jcv4' /* Title */,
                      ),
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Geist',
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            fontSize: 28.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        'fbpiyr16' /* Subtitle */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Geist',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontSize: 24.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondary,
                    activeColor: FlutterFlowTheme.of(context).tertiary,
                    activeTrackColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    dense: true,
                    controlAffinity: ListTileControlAffinity.leading,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 8.0)).around(SizedBox(height: 8.0)),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
