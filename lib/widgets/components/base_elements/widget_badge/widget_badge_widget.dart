import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:badges/badges.dart' as badges;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_badge_model.dart';
export 'widget_badge_model.dart';

class WidgetBadgeWidget extends StatefulWidget {
  const WidgetBadgeWidget({
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
  State<WidgetBadgeWidget> createState() => _WidgetBadgeWidgetState();
}

class _WidgetBadgeWidgetState extends State<WidgetBadgeWidget> {
  late WidgetBadgeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetBadgeModel());

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
            width: 300.0,
            height: 200.0,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).secondary,
                      ),
                    ),
                    child: badges.Badge(
                      badgeContent: Text(
                        valueOrDefault<String>(
                          _model.badge.toString(),
                          '1',
                        ),
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Geist',
                              color: Colors.white,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                      showBadge: true,
                      shape: badges.BadgeShape.circle,
                      badgeColor: FlutterFlowTheme.of(context).secondary,
                      elevation: 4.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                      position: badges.BadgePosition.topStart(),
                      animationType: badges.BadgeAnimationType.scale,
                      toAnimate: true,
                      child: Icon(
                        Icons.shopping_cart_sharp,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 48.0,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).success,
                      borderRadius: 20.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                      icon: Icon(
                        Icons.add,
                        color: FlutterFlowTheme.of(context).success,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        _model.badge = _model.badge + 1;
                        safeSetState(() {});
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).error,
                      borderRadius: 20.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                      icon: Icon(
                        Icons.delete_forever,
                        color: FlutterFlowTheme.of(context).error,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        _model.badge = _model.badge + -1;
                        safeSetState(() {});
                      },
                    ),
                  ].divide(SizedBox(width: 24.0)),
                ),
              ].divide(SizedBox(height: 24.0)),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
