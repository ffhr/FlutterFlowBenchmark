import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_tab_bar_model.dart';
export 'widget_tab_bar_model.dart';

class WidgetTabBarWidget extends StatefulWidget {
  const WidgetTabBarWidget({
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
  State<WidgetTabBarWidget> createState() => _WidgetTabBarWidgetState();
}

class _WidgetTabBarWidgetState extends State<WidgetTabBarWidget>
    with TickerProviderStateMixin {
  late WidgetTabBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetTabBarModel());

    _model.tabBarController1 = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    _model.tabBarController2 = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
      constraints: BoxConstraints(
        maxHeight: 1024.0,
      ),
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 500.0,
            height: 200.0,
            decoration: BoxDecoration(),
            child: Column(
              children: [
                Align(
                  alignment: Alignment(0.0, 0),
                  child: TabBar(
                    isScrollable: true,
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
                    padding: EdgeInsets.all(10.0),
                    tabs: [
                      Tab(
                        text: FFLocalizations.of(context).getText(
                          'mhcwfmgc' /* Tab 1 */,
                        ),
                      ),
                      Tab(
                        text: FFLocalizations.of(context).getText(
                          '4jzh3hg2' /* Tab 2 */,
                        ),
                      ),
                      Tab(
                        text: FFLocalizations.of(context).getText(
                          'pyscasr9' /* Tab 3 */,
                        ),
                      ),
                    ],
                    controller: _model.tabBarController1,
                    onTap: (i) async {
                      [() async {}, () async {}, () async {}][i]();
                    },
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _model.tabBarController1,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 150.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'kd0k8a4w' /* Content of Tab 1 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Geist',
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 200.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondary,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'o48nzznx' /* Content of Tab 2 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Geist',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 250.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'el5e200p' /* Content of Tab 3 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Geist',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 500.0,
            height: 200.0,
            decoration: BoxDecoration(),
            child: Column(
              children: [
                Expanded(
                  child: TabBarView(
                    controller: _model.tabBarController2,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 150.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ur447ue0' /* Content of Tab 1 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Geist',
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 200.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondary,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '0m6pji4i' /* Content of Tab 2 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Geist',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 250.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'oc90pxt9' /* Content of Tab 3 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Geist',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0.0, 0),
                  child: FlutterFlowButtonTabBar(
                    useToggleButtonStyle: true,
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
                    labelColor: FlutterFlowTheme.of(context).primaryText,
                    unselectedLabelColor:
                        FlutterFlowTheme.of(context).primaryText,
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    unselectedBackgroundColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    borderColor: FlutterFlowTheme.of(context).secondary,
                    unselectedBorderColor:
                        FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    elevation: 0.0,
                    buttonMargin:
                        EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    padding: EdgeInsets.all(10.0),
                    tabs: [
                      Tab(
                        text: FFLocalizations.of(context).getText(
                          'rqjcxxm5' /* Tab 1 */,
                        ),
                      ),
                      Tab(
                        text: FFLocalizations.of(context).getText(
                          'kv3zpru7' /* Tab 2 */,
                        ),
                      ),
                      Tab(
                        text: FFLocalizations.of(context).getText(
                          'r1pw7ssj' /* Tab 3 */,
                        ),
                      ),
                    ],
                    controller: _model.tabBarController2,
                    onTap: (i) async {
                      [() async {}, () async {}, () async {}][i]();
                    },
                  ),
                ),
              ],
            ),
          ),
        ].divide(SizedBox(height: 48.0)),
      ),
    );
  }
}
