import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widgets/components/base_elements/widget_text/widget_text_widget.dart';
import '/widgets/components/layout_elements/widget_card/widget_card_widget.dart';
import '/widgets/components/layout_elements/widget_carousel/widget_carousel_widget.dart';
import '/widgets/components/layout_elements/widget_column/widget_column_widget.dart';
import '/widgets/components/layout_elements/widget_container/widget_container_widget.dart';
import '/widgets/components/layout_elements/widget_data_table/widget_data_table_widget.dart';
import '/widgets/components/layout_elements/widget_divider/widget_divider_widget.dart';
import '/widgets/components/layout_elements/widget_expandable/widget_expandable_widget.dart';
import '/widgets/components/layout_elements/widget_flex/widget_flex_widget.dart';
import '/widgets/components/layout_elements/widget_flippable_card/widget_flippable_card_widget.dart';
import '/widgets/components/layout_elements/widget_form_validation/widget_form_validation_widget.dart';
import '/widgets/components/layout_elements/widget_grid_view/widget_grid_view_widget.dart';
import '/widgets/components/layout_elements/widget_list_view/widget_list_view_widget.dart';
import '/widgets/components/layout_elements/widget_page_view/widget_page_view_widget.dart';
import '/widgets/components/layout_elements/widget_row/widget_row_widget.dart';
import '/widgets/components/layout_elements/widget_spacer/widget_spacer_widget.dart';
import '/widgets/components/layout_elements/widget_stack/widget_stack_widget.dart';
import '/widgets/components/layout_elements/widget_staggered_view/widget_staggered_view_widget.dart';
import '/widgets/components/layout_elements/widget_swipeable_stack/widget_swipeable_stack_widget.dart';
import '/widgets/components/layout_elements/widget_tab_bar/widget_tab_bar_widget.dart';
import '/widgets/components/layout_elements/widget_vertical_divider/widget_vertical_divider_widget.dart';
import '/widgets/components/layout_elements/widget_wrap/widget_wrap_widget.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_page_model.dart';
export 'widget_page_model.dart';

class WidgetPageWidget extends StatefulWidget {
  const WidgetPageWidget({
    super.key,
    required this.widgetTitle,
    required this.slug,
  });

  final String? widgetTitle;
  final String? slug;

  @override
  State<WidgetPageWidget> createState() => _WidgetPageWidgetState();
}

class _WidgetPageWidgetState extends State<WidgetPageWidget> {
  late WidgetPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            valueOrDefault<String>(
              widget!.widgetTitle,
              'n/a',
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Geist',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Builder(
                builder: (context) {
                  if (widget!.widgetTitle == 'Text') {
                    return wrapWithModel(
                      model: _model.widgetTextModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetTextWidget(),
                    );
                  } else if (widget!.widgetTitle == 'Container') {
                    return wrapWithModel(
                      model: _model.widgetContainerModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetContainerWidget(),
                    );
                  } else if (widget!.widgetTitle == 'Row') {
                    return wrapWithModel(
                      model: _model.widgetRowModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetRowWidget(),
                    );
                  } else if (widget!.widgetTitle == 'Column') {
                    return wrapWithModel(
                      model: _model.widgetColumnModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetColumnWidget(),
                    );
                  } else if (widget!.widgetTitle == 'Stack') {
                    return wrapWithModel(
                      model: _model.widgetStackModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetStackWidget(),
                    );
                  } else if (widget!.widgetTitle == 'Card') {
                    return wrapWithModel(
                      model: _model.widgetCardModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetCardWidget(),
                    );
                  } else if (widget!.widgetTitle == 'ListView') {
                    return wrapWithModel(
                      model: _model.widgetListViewModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetListViewWidget(),
                    );
                  } else if (widget!.widgetTitle == 'GridView') {
                    return wrapWithModel(
                      model: _model.widgetGridViewModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetGridViewWidget(),
                    );
                  } else if (widget!.widgetTitle == 'Spacer') {
                    return wrapWithModel(
                      model: _model.widgetSpacerModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetSpacerWidget(),
                    );
                  } else if (widget!.widgetTitle == 'Divider') {
                    return wrapWithModel(
                      model: _model.widgetDividerModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetDividerWidget(),
                    );
                  } else if (widget!.widgetTitle == 'VerticalDivider') {
                    return wrapWithModel(
                      model: _model.widgetVerticalDividerModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetVerticalDividerWidget(),
                    );
                  } else if (widget!.widgetTitle == 'TabBar') {
                    return wrapWithModel(
                      model: _model.widgetTabBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetTabBarWidget(),
                    );
                  } else if (widget!.widgetTitle == 'PageView') {
                    return wrapWithModel(
                      model: _model.widgetPageViewModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetPageViewWidget(),
                    );
                  } else if (widget!.widgetTitle == 'WidgetCarousel') {
                    return wrapWithModel(
                      model: _model.widgetCarouselModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetCarouselWidget(),
                    );
                  } else if (widget!.widgetTitle == 'WidgetExpandable') {
                    return wrapWithModel(
                      model: _model.widgetExpandableModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetExpandableWidget(),
                    );
                  } else if (widget!.widgetTitle == 'WidgetWrap') {
                    return Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.widgetWrapModel,
                        updateCallback: () => safeSetState(() {}),
                        child: WidgetWrapWidget(),
                      ),
                    );
                  } else if (widget!.widgetTitle == 'WidgetFormValidation') {
                    return Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.widgetFormValidationModel,
                        updateCallback: () => safeSetState(() {}),
                        child: WidgetFormValidationWidget(),
                      ),
                    );
                  } else if (widget!.widgetTitle == 'WidgetStaggeredView') {
                    return wrapWithModel(
                      model: _model.widgetStaggeredViewModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetStaggeredViewWidget(),
                    );
                  } else if (widget!.widgetTitle == 'FlippableCard') {
                    return Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.widgetFlippableCardModel,
                        updateCallback: () => safeSetState(() {}),
                        child: WidgetFlippableCardWidget(),
                      ),
                    );
                  } else if (widget!.widgetTitle == 'WidgetSwipeableStack') {
                    return wrapWithModel(
                      model: _model.widgetSwipeableStackModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetSwipeableStackWidget(),
                    );
                  } else if (widget!.widgetTitle == 'WidgetDataTable') {
                    return wrapWithModel(
                      model: _model.widgetDataTableModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetDataTableWidget(),
                    );
                  } else if (widget!.widgetTitle == 'WidgetFlex') {
                    return Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.widgetFlexModel,
                          updateCallback: () => safeSetState(() {}),
                          child: WidgetFlexWidget(),
                        ),
                      ),
                    );
                  } else {
                    return Text(
                      'Hello World',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Geist',
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
