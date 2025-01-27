import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_video_player_model.dart';
export 'widget_video_player_model.dart';

class WidgetVideoPlayerWidget extends StatefulWidget {
  const WidgetVideoPlayerWidget({
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
  State<WidgetVideoPlayerWidget> createState() =>
      _WidgetVideoPlayerWidgetState();
}

class _WidgetVideoPlayerWidgetState extends State<WidgetVideoPlayerWidget> {
  late WidgetVideoPlayerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetVideoPlayerModel());

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
            width: 500.0,
            height: 300.0,
            decoration: BoxDecoration(),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: FlutterFlowVideoPlayer(
                path:
                    'https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4',
                videoType: VideoType.network,
                width: 350.0,
                height: 200.0,
                aspectRatio: 169.0,
                autoPlay: false,
                looping: true,
                showControls: true,
                allowFullScreen: true,
                allowPlaybackSpeedMenu: false,
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
