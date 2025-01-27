import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_audio_player_model.dart';
export 'widget_audio_player_model.dart';

class WidgetAudioPlayerWidget extends StatefulWidget {
  const WidgetAudioPlayerWidget({
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
  State<WidgetAudioPlayerWidget> createState() =>
      _WidgetAudioPlayerWidgetState();
}

class _WidgetAudioPlayerWidgetState extends State<WidgetAudioPlayerWidget> {
  late WidgetAudioPlayerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetAudioPlayerModel());

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
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: FlutterFlowAudioPlayer(
                        audio: Audio.network(
                          'https://filesamples.com/samples/audio/mp3/sample3.mp3',
                          metas: Metas(
                            id: 'sample3.mp3-9385131d',
                            title: 'Title',
                          ),
                        ),
                        titleTextStyle:
                            FlutterFlowTheme.of(context).titleLarge.override(
                                  fontFamily: 'Geist',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                        playbackDurationTextStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Geist',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        playbackButtonColor:
                            FlutterFlowTheme.of(context).tertiary,
                        activeTrackColor:
                            FlutterFlowTheme.of(context).secondary,
                        inactiveTrackColor:
                            FlutterFlowTheme.of(context).primary,
                        elevation: 5.0,
                        playInBackground:
                            PlayInBackground.disabledRestoreOnForeground,
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 16.0)),
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
