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
import 'widget_page_widget.dart' show WidgetPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WidgetPageModel extends FlutterFlowModel<WidgetPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for WidgetText component.
  late WidgetTextModel widgetTextModel;
  // Model for WidgetContainer component.
  late WidgetContainerModel widgetContainerModel;
  // Model for WidgetRow component.
  late WidgetRowModel widgetRowModel;
  // Model for WidgetColumn component.
  late WidgetColumnModel widgetColumnModel;
  // Model for WidgetStack component.
  late WidgetStackModel widgetStackModel;
  // Model for WidgetCard component.
  late WidgetCardModel widgetCardModel;
  // Model for WidgetListView component.
  late WidgetListViewModel widgetListViewModel;
  // Model for WidgetGridView component.
  late WidgetGridViewModel widgetGridViewModel;
  // Model for WidgetSpacer component.
  late WidgetSpacerModel widgetSpacerModel;
  // Model for WidgetDivider component.
  late WidgetDividerModel widgetDividerModel;
  // Model for WidgetVerticalDivider component.
  late WidgetVerticalDividerModel widgetVerticalDividerModel;
  // Model for WidgetTabBar component.
  late WidgetTabBarModel widgetTabBarModel;
  // Model for WidgetPageView component.
  late WidgetPageViewModel widgetPageViewModel;
  // Model for WidgetCarousel component.
  late WidgetCarouselModel widgetCarouselModel;
  // Model for WidgetExpandable component.
  late WidgetExpandableModel widgetExpandableModel;
  // Model for WidgetWrap component.
  late WidgetWrapModel widgetWrapModel;
  // Model for WidgetFormValidation component.
  late WidgetFormValidationModel widgetFormValidationModel;
  // Model for WidgetStaggeredView component.
  late WidgetStaggeredViewModel widgetStaggeredViewModel;
  // Model for WidgetFlippableCard component.
  late WidgetFlippableCardModel widgetFlippableCardModel;
  // Model for WidgetSwipeableStack component.
  late WidgetSwipeableStackModel widgetSwipeableStackModel;
  // Model for WidgetDataTable component.
  late WidgetDataTableModel widgetDataTableModel;
  // Model for WidgetFlex component.
  late WidgetFlexModel widgetFlexModel;

  @override
  void initState(BuildContext context) {
    widgetTextModel = createModel(context, () => WidgetTextModel());
    widgetContainerModel = createModel(context, () => WidgetContainerModel());
    widgetRowModel = createModel(context, () => WidgetRowModel());
    widgetColumnModel = createModel(context, () => WidgetColumnModel());
    widgetStackModel = createModel(context, () => WidgetStackModel());
    widgetCardModel = createModel(context, () => WidgetCardModel());
    widgetListViewModel = createModel(context, () => WidgetListViewModel());
    widgetGridViewModel = createModel(context, () => WidgetGridViewModel());
    widgetSpacerModel = createModel(context, () => WidgetSpacerModel());
    widgetDividerModel = createModel(context, () => WidgetDividerModel());
    widgetVerticalDividerModel =
        createModel(context, () => WidgetVerticalDividerModel());
    widgetTabBarModel = createModel(context, () => WidgetTabBarModel());
    widgetPageViewModel = createModel(context, () => WidgetPageViewModel());
    widgetCarouselModel = createModel(context, () => WidgetCarouselModel());
    widgetExpandableModel = createModel(context, () => WidgetExpandableModel());
    widgetWrapModel = createModel(context, () => WidgetWrapModel());
    widgetFormValidationModel =
        createModel(context, () => WidgetFormValidationModel());
    widgetStaggeredViewModel =
        createModel(context, () => WidgetStaggeredViewModel());
    widgetFlippableCardModel =
        createModel(context, () => WidgetFlippableCardModel());
    widgetSwipeableStackModel =
        createModel(context, () => WidgetSwipeableStackModel());
    widgetDataTableModel = createModel(context, () => WidgetDataTableModel());
    widgetFlexModel = createModel(context, () => WidgetFlexModel());
  }

  @override
  void dispose() {
    widgetTextModel.dispose();
    widgetContainerModel.dispose();
    widgetRowModel.dispose();
    widgetColumnModel.dispose();
    widgetStackModel.dispose();
    widgetCardModel.dispose();
    widgetListViewModel.dispose();
    widgetGridViewModel.dispose();
    widgetSpacerModel.dispose();
    widgetDividerModel.dispose();
    widgetVerticalDividerModel.dispose();
    widgetTabBarModel.dispose();
    widgetPageViewModel.dispose();
    widgetCarouselModel.dispose();
    widgetExpandableModel.dispose();
    widgetWrapModel.dispose();
    widgetFormValidationModel.dispose();
    widgetStaggeredViewModel.dispose();
    widgetFlippableCardModel.dispose();
    widgetSwipeableStackModel.dispose();
    widgetDataTableModel.dispose();
    widgetFlexModel.dispose();
  }
}
