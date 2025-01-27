import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_mouse_region_model.dart';
export 'widget_mouse_region_model.dart';

class WidgetMouseRegionWidget extends StatefulWidget {
  const WidgetMouseRegionWidget({
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
  State<WidgetMouseRegionWidget> createState() =>
      _WidgetMouseRegionWidgetState();
}

class _WidgetMouseRegionWidgetState extends State<WidgetMouseRegionWidget>
    with TickerProviderStateMixin {
  late WidgetMouseRegionModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetMouseRegionModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    animationsMap.addAll({
      'buttonOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 350.0.ms,
            duration: 1040.0.ms,
            begin: Offset(-38.0, -9.0),
            end: Offset(-9.0, 14.999999999999986),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
            height: 600.0,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment(0.0, 0),
                        child: TabBar(
                          labelColor: FlutterFlowTheme.of(context).primaryText,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          labelStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Geist',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          unselectedLabelStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Geist',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          indicatorColor: FlutterFlowTheme.of(context).primary,
                          tabs: [
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'aoq9y6oi' /* Tab 1 */,
                              ),
                            ),
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'h64lyf98' /* Tab 2 */,
                              ),
                            ),
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'x62h8wen' /* Tab 4 */,
                              ),
                            ),
                          ],
                          controller: _model.tabBarController,
                          onTap: (i) async {
                            [() async {}, () async {}, () async {}][i]();
                          },
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 0.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        MouseRegion(
                                          opaque: false,
                                          cursor: MouseCursor.defer ??
                                              MouseCursor.defer,
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: _model.buttonText,
                                            options: FFButtonOptions(
                                              width: 200.0,
                                              height: 50.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: _model.buttonColor,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Geist',
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'buttonOnActionTriggerAnimation']!,
                                          ),
                                          onEnter: ((event) async {
                                            safeSetState(() => _model
                                                .mouseRegionHovered1 = true);
                                            _model.buttonColor =
                                                FlutterFlowTheme.of(context)
                                                    .error;
                                            safeSetState(() {});
                                            _model.buttonText = 'CLICK ME!';
                                            safeSetState(() {});
                                            if (animationsMap[
                                                    'buttonOnActionTriggerAnimation'] !=
                                                null) {
                                              await animationsMap[
                                                      'buttonOnActionTriggerAnimation']!
                                                  .controller
                                                  .forward(from: 0.0)
                                                  .whenComplete(animationsMap[
                                                          'buttonOnActionTriggerAnimation']!
                                                      .controller
                                                      .reverse);
                                            }
                                          }),
                                          onExit: ((event) async {
                                            safeSetState(() => _model
                                                .mouseRegionHovered1 = false);
                                            _model.buttonColor =
                                                FlutterFlowTheme.of(context)
                                                    .tertiary;
                                            safeSetState(() {});
                                            _model.buttonText = 'OK';
                                            safeSetState(() {});
                                            if (animationsMap[
                                                    'buttonOnActionTriggerAnimation'] !=
                                                null) {
                                              animationsMap[
                                                      'buttonOnActionTriggerAnimation']!
                                                  .controller
                                                  .stop();
                                            }
                                          }),
                                        ),
                                      ],
                                    ),
                                  ].divide(SizedBox(height: 36.0)),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    MouseRegion(
                                      opaque: false,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      child: Stack(
                                        children: [
                                          if (!_model.mouseRegionHovered2!)
                                            FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: _model.buttonText,
                                              options: FFButtonOptions(
                                                width: 200.0,
                                                height: 50.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: _model.buttonColor,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Geist',
                                                          color: Colors.white,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          if (_model.mouseRegionHovered2 ??
                                              true)
                                            Opacity(
                                              opacity: 0.8,
                                              child: FFButtonWidget(
                                                onPressed: () {
                                                  print('Button pressed ...');
                                                },
                                                text: _model.buttonText,
                                                options: FFButtonOptions(
                                                  width: 250.0,
                                                  height: 75.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: _model.buttonColor,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Geist',
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      onEnter: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered2 = true);
                                        _model.buttonColor =
                                            FlutterFlowTheme.of(context).error;
                                        safeSetState(() {});
                                        _model.buttonText = 'CLICK ME!';
                                        safeSetState(() {});
                                      }),
                                      onExit: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered2 = false);
                                        _model.buttonColor =
                                            FlutterFlowTheme.of(context)
                                                .secondary;
                                        safeSetState(() {});
                                        _model.buttonText = 'OK';
                                        safeSetState(() {});
                                      }),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  child: Stack(
                                    children: [
                                      if (!_model.mouseRegionHovered3!)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 100.0, 0.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              'https://picsum.photos/seed/304/600',
                                              width: 300.0,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      Transform.scale(
                                        scaleX: 1.2,
                                        scaleY: 1.2,
                                        child: Visibility(
                                          visible: _model.mouseRegionHovered3 ??
                                              true,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 100.0, 0.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'https://picsum.photos/seed/304/600',
                                                width: 300.0,
                                                height: 200.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  onEnter: ((event) async {
                                    safeSetState(() =>
                                        _model.mouseRegionHovered3 = true);
                                  }),
                                  onExit: ((event) async {
                                    safeSetState(() =>
                                        _model.mouseRegionHovered3 = false);
                                  }),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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
