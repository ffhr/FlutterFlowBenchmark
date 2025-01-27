import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_staggered_view_model.dart';
export 'widget_staggered_view_model.dart';

class WidgetStaggeredViewWidget extends StatefulWidget {
  const WidgetStaggeredViewWidget({
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
  State<WidgetStaggeredViewWidget> createState() =>
      _WidgetStaggeredViewWidgetState();
}

class _WidgetStaggeredViewWidgetState extends State<WidgetStaggeredViewWidget> {
  late WidgetStaggeredViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetStaggeredViewModel());

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
          Flexible(
            child: Container(
              height: 600.0,
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: MasonryGridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  itemCount: 8,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return [
                      () => Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1514876246314-d9a231ea21db?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxmaXJld29ya3N8ZW58MHx8fHwxNzM3MDQ4MTY3fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                width: 150.0,
                                height: 300.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                      () => Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://picsum.photos/seed/960/600',
                                width: 200.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                      () => Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1713847243126-ff9ec9b40db9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxjYWxtaW5nJTIwbmF0dXJlfGVufDB8fHx8MTczNzQ4MjI5MXww&ixlib=rb-4.0.3&q=80&w=1080',
                                width: 150.0,
                                height: 250.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                      () => ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1499531011814-14b20e46c785?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMXx8dGVhfGVufDB8fHx8MTczNzQ5ODgwNnww&ixlib=rb-4.0.3&q=80&w=1080',
                              width: 200.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                      () => ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://picsum.photos/seed/122/600',
                              width: 200.0,
                              height: 50.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                      () => ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1526505262320-81542978f63b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw3fHxsZWdvfGVufDB8fHx8MTczNzQ1MjgyMnww&ixlib=rb-4.0.3&q=80&w=1080',
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                      () => ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1691689380376-025c287915fc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMXx8Y2FsbWluZyUyMG5hdHVyZXxlbnwwfHx8fDE3Mzc0ODIyOTF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                              width: 100.0,
                              height: 150.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                      () => ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1531969179221-3946e6b5a5e7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHx0ZWF8ZW58MHx8fHwxNzM3NDk4ODA2fDA&ixlib=rb-4.0.3&q=80&w=1080',
                              width: 100.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                    ][index]();
                  },
                ),
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
