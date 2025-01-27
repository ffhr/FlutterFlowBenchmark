import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:shadcn_u_i_kit_v48jv9/app_state.dart'
    as shadcn_u_i_kit_v48jv9_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_chart_model.dart';
export 'widget_chart_model.dart';

class WidgetChartWidget extends StatefulWidget {
  const WidgetChartWidget({
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
  State<WidgetChartWidget> createState() => _WidgetChartWidgetState();
}

class _WidgetChartWidgetState extends State<WidgetChartWidget>
    with TickerProviderStateMixin {
  late WidgetChartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetChartModel());

    _model.tabBarController = TabController(
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
    context.watch<FFAppState>();
    context.watch<shadcn_u_i_kit_v48jv9_app_state.FFAppState>();
    final chartPieChartColorsList3 = [
      Color(0xFF8F46E9),
      Color(0xFF6F28CB),
      Color(0xFF2536A4),
      Color(0xFF4A57C1)
    ];
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Container(
                width: 500.0,
                height: 600.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                ),
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment(0.0, 0),
                              child: FlutterFlowButtonTabBar(
                                useToggleButtonStyle: true,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Geist',
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                                unselectedLabelStyle:
                                    FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Geist',
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                labelColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                unselectedBackgroundColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                unselectedBorderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                elevation: 0.0,
                                buttonMargin: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                padding: EdgeInsets.all(12.0),
                                tabs: [
                                  Tab(
                                    text: FFLocalizations.of(context).getText(
                                      'ekt7bu7e' /* Line */,
                                    ),
                                  ),
                                  Tab(
                                    text: FFLocalizations.of(context).getText(
                                      'g09sha1n' /* Bar */,
                                    ),
                                  ),
                                  Tab(
                                    text: FFLocalizations.of(context).getText(
                                      '245y8ode' /* Pie */,
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
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'pefo2pfk' /* LineChart */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Geist',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                              Container(
                                                width: 400.0,
                                                height: 280.0,
                                                child: Stack(
                                                  children: [
                                                    FlutterFlowLineChart(
                                                      data: [
                                                        FFLineChartData(
                                                          xData: _model
                                                              .capacityList,
                                                          yData: List.generate(
                                                              random_data
                                                                  .randomInteger(
                                                                      7, 7),
                                                              (index) => random_data
                                                                  .randomInteger(
                                                                      0, 50)),
                                                          settings:
                                                              LineChartBarData(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            barWidth: 2.0,
                                                            isCurved: true,
                                                          ),
                                                        ),
                                                        FFLineChartData(
                                                          xData: _model
                                                              .capacityList,
                                                          yData: List.generate(
                                                              random_data
                                                                  .randomInteger(
                                                                      7, 7),
                                                              (index) => random_data
                                                                  .randomInteger(
                                                                      0, 50)),
                                                          settings:
                                                              LineChartBarData(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                            barWidth: 2.0,
                                                            isCurved: true,
                                                          ),
                                                        ),
                                                        FFLineChartData(
                                                          xData: _model
                                                              .capacityList,
                                                          yData: List.generate(
                                                              random_data
                                                                  .randomInteger(
                                                                      7, 7),
                                                              (index) => random_data
                                                                  .randomInteger(
                                                                      0, 50)),
                                                          settings:
                                                              LineChartBarData(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .tertiary,
                                                            barWidth: 2.0,
                                                            isCurved: true,
                                                          ),
                                                        ),
                                                        FFLineChartData(
                                                          xData: _model
                                                              .capacityList,
                                                          yData: List.generate(
                                                              random_data
                                                                  .randomInteger(
                                                                      7, 7),
                                                              (index) => random_data
                                                                  .randomInteger(
                                                                      0, 50)),
                                                          settings:
                                                              LineChartBarData(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .warning,
                                                            barWidth: 2.0,
                                                            isCurved: true,
                                                          ),
                                                        )
                                                      ],
                                                      chartStylingInfo:
                                                          ChartStylingInfo(
                                                        enableTooltip: true,
                                                        tooltipBackgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        showGrid: true,
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        borderWidth: 1.0,
                                                      ),
                                                      axisBounds: AxisBounds(),
                                                      xAxisLabelInfo:
                                                          AxisLabelInfo(
                                                        title:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'o6k37w11' /* Rent */,
                                                        ),
                                                        titleTextStyle:
                                                            TextStyle(
                                                          fontFamily: 'Geist',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 14.0,
                                                        ),
                                                        reservedSize: 32.0,
                                                      ),
                                                      yAxisLabelInfo:
                                                          AxisLabelInfo(
                                                        title:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '5ob0q6n0' /* Price ($) */,
                                                        ),
                                                        titleTextStyle:
                                                            TextStyle(
                                                          fontFamily: 'Geist',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 14.0,
                                                        ),
                                                        showLabels: true,
                                                        labelTextStyle:
                                                            TextStyle(
                                                          fontFamily: 'Geist',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        labelInterval: 10.0,
                                                        reservedSize: 40.0,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, 1.0),
                                                      child:
                                                          FlutterFlowChartLegendWidget(
                                                        entries: [
                                                          LegendEntry(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '8b2kafra' /* Value1 */,
                                                              )),
                                                          LegendEntry(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '03fgp0ns' /* Value 2 */,
                                                              )),
                                                          LegendEntry(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .tertiary,
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '6xk329ff' /* Value 3 */,
                                                              )),
                                                          LegendEntry(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .warning,
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'mzp23r7z' /* Value 4 */,
                                                              )),
                                                        ],
                                                        width: 100.0,
                                                        height: 100.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Geist',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        textPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        borderWidth: 1.0,
                                                        indicatorSize: 10.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 24.0)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '1yakvrp0' /* BarChart */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Geist',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                            Container(
                                              height: 230.0,
                                              child: FlutterFlowBarChart(
                                                barData: [
                                                  FFBarChartData(
                                                    yData: List.generate(
                                                        random_data
                                                            .randomInteger(
                                                                7, 7),
                                                        (index) => random_data
                                                            .randomInteger(
                                                                0, 100)),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                  )
                                                ],
                                                xLabels: _model.barLabels,
                                                barWidth: 10.0,
                                                barBorderRadius:
                                                    BorderRadius.circular(8.0),
                                                groupSpace: 0.0,
                                                alignment: BarChartAlignment
                                                    .spaceEvenly,
                                                chartStylingInfo:
                                                    ChartStylingInfo(
                                                  enableTooltip: true,
                                                  tooltipBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  showGrid: true,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  borderWidth: 1.0,
                                                ),
                                                axisBounds: AxisBounds(),
                                                xAxisLabelInfo: AxisLabelInfo(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'az9k8cau' /* Months */,
                                                  ),
                                                  titleTextStyle: TextStyle(
                                                    fontFamily: 'Geist',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    fontSize: 14.0,
                                                  ),
                                                  showLabels: true,
                                                  labelTextStyle: TextStyle(
                                                    fontFamily: 'Geist',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  labelInterval: 10.0,
                                                  reservedSize: 52.0,
                                                ),
                                                yAxisLabelInfo: AxisLabelInfo(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'jb8ld51t' /* Price ($) */,
                                                  ),
                                                  titleTextStyle: TextStyle(
                                                    fontFamily: 'Geist',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    fontSize: 14.0,
                                                  ),
                                                  showLabels: true,
                                                  labelTextStyle: TextStyle(
                                                    fontFamily: 'Geist',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  labelInterval: 20.0,
                                                  reservedSize: 52.0,
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 24.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'sfgqhq69' /* PieChart */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Geist',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                            Container(
                                              height: 230.0,
                                              child: FlutterFlowPieChart(
                                                data: FFPieChartData(
                                                  values: List.generate(
                                                      random_data.randomInteger(
                                                          7, 7),
                                                      (index) => random_data
                                                          .randomInteger(
                                                              0, 100)),
                                                  colors:
                                                      chartPieChartColorsList3,
                                                  radius: [100.0],
                                                  borderColor: [
                                                    Color(0x00000000)
                                                  ],
                                                ),
                                                donutHoleRadius: 0.0,
                                                donutHoleColor:
                                                    Colors.transparent,
                                                sectionLabelType:
                                                    PieChartSectionLabelType
                                                        .value,
                                                sectionLabelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Geist',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 24.0)),
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
                    ]
                        .divide(SizedBox(height: 16.0))
                        .addToEnd(SizedBox(height: 44.0)),
                  ),
                ),
              ),
            ),
          ].divide(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
