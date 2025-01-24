import '/backend/cloud_functions/cloud_functions.dart';
import '/flutter_flow/flutter_flow_mux_broadcast.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'dart:async';
import 'dart:io' show Platform;
import 'package:apivideo_live_stream/apivideo_live_stream.dart';
import 'package:flutter/services.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_mux_broadcast_model.dart';
export 'widget_mux_broadcast_model.dart';

class WidgetMuxBroadcastWidget extends StatefulWidget {
  const WidgetMuxBroadcastWidget({
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
  State<WidgetMuxBroadcastWidget> createState() =>
      _WidgetMuxBroadcastWidgetState();
}

class _WidgetMuxBroadcastWidgetState extends State<WidgetMuxBroadcastWidget> {
  late WidgetMuxBroadcastModel _model;

  String? muxBroadcastPlaybackUrl;
  bool muxBroadcastIsLive = false;
  LiveStreamController? muxBroadcastController;
  final _initialAudioConfig = AudioConfig(
    channel: Channel.stereo,
  );
  final _initialVideoConfig = VideoConfig.withDefaultBitrate(
    resolution: Resolution.RESOLUTION_720,
  );
  // variables for managing camera states
  bool _isCameraInitialized = false;
  bool _isFrontCamSelected = false;
  final _stopwatch = Stopwatch();
  String? _durationString;
  Timer? _timer;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetMuxBroadcastModel());

    if (Platform.isAndroid || Platform.isIOS) {
      _initCamera();
    }

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    _stopwatch.stop();
    _timer?.cancel();
    WakelockPlus.disable();

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
            height: 600.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
            ),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: FlutterFlowMuxBroadcast(
              isCameraInitialized: _isCameraInitialized,
              isStreaming: muxBroadcastIsLive,
              durationString: _durationString,
              borderRadius: BorderRadius.circular(8.0),
              controller: muxBroadcastController,
              videoConfig: _initialVideoConfig,
              onCameraRotateButtonTap: () async {
                await switchCamera();
                safeSetState(() => _isFrontCamSelected = !_isFrontCamSelected);
              },
              startButtonText: FFLocalizations.of(context).getText(
                '3g0i821e' /* Start Stream */,
              ),
              startButtonIcon: Icon(
                Icons.play_arrow_rounded,
                color: Colors.white,
                size: 24.0,
              ),
              startButtonOptions: FFButtonOptions(
                width: 160.0,
                height: 50.0,
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Geist',
                      color: Colors.white,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
                elevation: 0.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(40.0),
              ),
              liveIcon: FaIcon(
                FontAwesomeIcons.solidCircle,
                color: Colors.red,
                size: 10.0,
              ),
              liveText: FFLocalizations.of(context).getText(
                'g4s5cbu6' /* Live */,
              ),
              liveTextStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Geist',
                    color: Colors.red,
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
              liveTextBackgroundColor: Color(0x8A000000),
              durationTextStyle:
                  FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Geist',
                        color: Colors.red,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
              durationTextBackgroundColor: Color(0x8A000000),
              liveContainerBorderRadius: BorderRadius.circular(8.0),
              durationContainerBorderRadius: BorderRadius.circular(8.0),
              rotateButtonColor: Color(0x8A000000),
              rotateButtonIcon: Icon(
                Icons.flip_camera_android,
                color: Colors.white,
                size: 24.0,
              ),
              stopButtonIcon: Icon(
                Icons.stop_rounded,
                color: Colors.white,
                size: 30.0,
              ),
              stopButtonColor: Colors.red,
              onStartButtonTap: () async {
                await startStreaming();
              },
              onStopButtonTap: () async {
                stopStreaming();
              },
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }

  _initCamera() async {
    muxBroadcastController = initLiveStreamController();
    await muxBroadcastController!.create(
      initialAudioConfig: _initialAudioConfig,
      initialVideoConfig: _initialVideoConfig,
    );
    safeSetState(() => _isCameraInitialized = true);
  }

  LiveStreamController initLiveStreamController() {
    return LiveStreamController(
      onConnectionSuccess: () {
        print('Connection succeeded');
        safeSetState(() => muxBroadcastIsLive = true);
        _startTimer();
      },
      onConnectionFailed: (error) {
        print('Connection failed: $error');
        safeSetState(() {});
      },
      onDisconnection: () {
        print('Disconnected');
        safeSetState(() => muxBroadcastIsLive = false);
        _stopTimer();
      },
    );
  }

  Future<void> switchCamera() async {
    final LiveStreamController? liveStreamController = muxBroadcastController;
    if (liveStreamController == null) return;
    try {
      liveStreamController.switchCamera();
    } catch (error) {
      if (error is PlatformException) {
        print('Failed to switch camera: ${error.message}');
      } else {
        print('Failed to switch camera: $error');
      }
    }
  }

  Future<void> startStreaming() async {
    final LiveStreamController? liveStreamController = muxBroadcastController;
    if (liveStreamController == null) return;
    const streamBaseURL = 'rtmps://global-live.mux.com:443/app/';
    final callName = 'createLiveStream';
    final response = await makeCloudCall(callName, {'latency_mode': 'reduced'});
    final streamKey = response['stream_key'];
    final playbackId = response['playback_ids'][0]['id'];
    muxBroadcastPlaybackUrl = 'https://stream.mux.com/$playbackId.m3u8';
    if (streamKey != null) {
      try {
        WakelockPlus.enable();
        await liveStreamController.startStreaming(
          streamKey: streamKey,
          url: streamBaseURL,
        );
      } catch (error) {
        if (error is PlatformException) {
          print("Error: failed to start stream: ${error.message}");
        } else {
          print("Error: failed to start stream: $error");
        }
      }
    }
  }

  Future<void> stopStreaming() async {
    final LiveStreamController? liveStreamController = muxBroadcastController;
    if (liveStreamController == null) return;
    try {
      WakelockPlus.disable();
      liveStreamController.stopStreaming();
      safeSetState(() => muxBroadcastIsLive = false);
      _stopTimer();
    } catch (error) {
      if (error is PlatformException) {
        print('Failed to stop stream: ${error.message}');
      } else {
        print('Failed to stop stream: $error');
      }
    }
  }

  void _startTimer() {
    _stopwatch.start();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      safeSetState(() {
        _durationString = _getDurationString(_stopwatch.elapsed);
      });
    });
  }

  void _stopTimer() {
    _stopwatch
      ..stop()
      ..reset();
    _durationString = _getDurationString(_stopwatch.elapsed);
    _timer?.cancel();
  }

  String _getDurationString(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }
}
