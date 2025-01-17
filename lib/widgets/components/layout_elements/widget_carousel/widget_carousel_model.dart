import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'widget_carousel_widget.dart' show WidgetCarouselWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WidgetCarouselModel extends FlutterFlowModel<WidgetCarouselWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 1;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
