import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_swipeable_stack_model.dart';
export 'widget_swipeable_stack_model.dart';

class WidgetSwipeableStackWidget extends StatefulWidget {
  const WidgetSwipeableStackWidget({
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
  State<WidgetSwipeableStackWidget> createState() =>
      _WidgetSwipeableStackWidgetState();
}

class _WidgetSwipeableStackWidgetState
    extends State<WidgetSwipeableStackWidget> {
  late WidgetSwipeableStackModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetSwipeableStackModel());

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
            width: double.infinity,
            height: 400.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
            ),
            child: FlutterFlowSwipeableStack(
              onSwipeFn: (index) {},
              onLeftSwipe: (index) {},
              onRightSwipe: (index) {},
              onUpSwipe: (index) {},
              onDownSwipe: (index) {},
              itemBuilder: (context, index) {
                return [
                  () => Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://picsum.photos/seed/539/600',
                            width: double.infinity,
                            height: 300.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                  () => Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://picsum.photos/seed/246/600',
                            width: double.infinity,
                            height: 300.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                  () => Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://picsum.photos/seed/615/600',
                            width: double.infinity,
                            height: 300.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                  () => Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://picsum.photos/seed/703/600',
                            width: double.infinity,
                            height: 300.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                ][index]();
              },
              itemCount: 4,
              controller: _model.swipeableStackController,
              loop: true,
              cardDisplayCount: 3,
              scale: 0.85,
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
