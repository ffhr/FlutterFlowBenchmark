import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/admob_util.dart' as admob;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_ad_banner_model.dart';
export 'widget_ad_banner_model.dart';

class WidgetAdBannerWidget extends StatefulWidget {
  const WidgetAdBannerWidget({
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
  State<WidgetAdBannerWidget> createState() => _WidgetAdBannerWidgetState();
}

class _WidgetAdBannerWidgetState extends State<WidgetAdBannerWidget> {
  late WidgetAdBannerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetAdBannerModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.interstitialAdSuccess = await admob.showInterstitialAd();

      if (_model.interstitialAdSuccess!) {
        admob.loadInterstitialAd(
          "ca-app-pub-8112480788036252/8325937956",
          "ca-app-pub-8112480788036252/1426886489",
          true,
        );
      }
    });

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
            height: 500.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: FlutterFlowAdBanner(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 50.0,
                    showsTestAd: true,
                    iOSAdUnitID: 'ca-app-pub-8112480788036252/4597072787',
                    androidAdUnitID: 'ca-app-pub-8112480788036252/7929813130',
                  ),
                ),
              ],
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
