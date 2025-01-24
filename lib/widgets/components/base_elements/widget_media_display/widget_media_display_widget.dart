import '/flutter_flow/flutter_flow_media_display.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_media_display_model.dart';
export 'widget_media_display_model.dart';

class WidgetMediaDisplayWidget extends StatefulWidget {
  const WidgetMediaDisplayWidget({
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
  State<WidgetMediaDisplayWidget> createState() =>
      _WidgetMediaDisplayWidgetState();
}

class _WidgetMediaDisplayWidgetState extends State<WidgetMediaDisplayWidget> {
  late WidgetMediaDisplayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetMediaDisplayModel());

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
          Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Container(
              width: 500.0,
              height: 600.0,
              decoration: BoxDecoration(),
              child: Builder(
                builder: (context) {
                  final media = _model.mediaList.toList();

                  return ListView.separated(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: media.length,
                    separatorBuilder: (_, __) => SizedBox(height: 8.0),
                    itemBuilder: (context, mediaIndex) {
                      final mediaItem = media[mediaIndex];
                      return FlutterFlowMediaDisplay(
                        path: mediaItem,
                        imageBuilder: (path) => ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            path,
                            width: 300.0,
                            height: 300.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                        videoPlayerBuilder: (path) => FlutterFlowVideoPlayer(
                          path: path,
                          width: 300.0,
                          height: 250.0,
                          aspectRatio: 1.0,
                          autoPlay: true,
                          looping: true,
                          showControls: true,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: true,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
