import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'widget_swipeable_stack_widget.dart' show WidgetSwipeableStackWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WidgetSwipeableStackModel
    extends FlutterFlowModel<WidgetSwipeableStackWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController1;
  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController2;

  @override
  void initState(BuildContext context) {
    swipeableStackController1 = CardSwiperController();
    swipeableStackController2 = CardSwiperController();
  }

  @override
  void dispose() {}
}
