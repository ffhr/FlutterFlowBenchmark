import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_carousel_model.dart';
export 'widget_carousel_model.dart';

class WidgetCarouselWidget extends StatefulWidget {
  const WidgetCarouselWidget({
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
  State<WidgetCarouselWidget> createState() => _WidgetCarouselWidgetState();
}

class _WidgetCarouselWidgetState extends State<WidgetCarouselWidget> {
  late WidgetCarouselModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetCarouselModel());

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
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 400.0,
              height: 250.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Container(
                width: double.infinity,
                height: 200.0,
                child: CarouselSlider(
                  items: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://picsum.photos/seed/828/600',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://picsum.photos/seed/909/600',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://picsum.photos/seed/508/600',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                  carouselController: _model.carouselController1 ??=
                      CarouselSliderController(),
                  options: CarouselOptions(
                    initialPage: 1,
                    viewportFraction: 0.55,
                    disableCenter: false,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    enableInfiniteScroll: true,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayInterval: Duration(milliseconds: (800 + 4000)),
                    autoPlayCurve: Curves.linear,
                    pauseAutoPlayInFiniteScroll: true,
                    onPageChanged: (index, _) =>
                        _model.carouselCurrentIndex1 = index,
                  ),
                ),
              ),
            ),
            Container(
              width: 400.0,
              height: 300.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Container(
                width: double.infinity,
                height: 200.0,
                child: CarouselSlider(
                  items: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://picsum.photos/seed/828/600',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://picsum.photos/seed/909/600',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://picsum.photos/seed/508/600',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                  carouselController: _model.carouselController2 ??=
                      CarouselSliderController(),
                  options: CarouselOptions(
                    initialPage: 1,
                    viewportFraction: 0.5,
                    disableCenter: true,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.4,
                    enableInfiniteScroll: true,
                    scrollDirection: Axis.vertical,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 1000),
                    autoPlayInterval: Duration(milliseconds: (1000 + 4000)),
                    autoPlayCurve: Curves.linear,
                    pauseAutoPlayInFiniteScroll: true,
                    onPageChanged: (index, _) =>
                        _model.carouselCurrentIndex2 = index,
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
