import '/flutter_flow/flutter_flow_media_display.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'dart:ui';
import 'widget_media_display_widget.dart' show WidgetMediaDisplayWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WidgetMediaDisplayModel
    extends FlutterFlowModel<WidgetMediaDisplayWidget> {
  ///  Local state fields for this component.

  List<String> mediaList = [
    'https://picsum.photos/seed/291/600',
    'https://picsum.photos/seed/108/600',
    'https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4',
    'https://picsum.photos/seed/366/600'
  ];
  void addToMediaList(String item) => mediaList.add(item);
  void removeFromMediaList(String item) => mediaList.remove(item);
  void removeAtIndexFromMediaList(int index) => mediaList.removeAt(index);
  void insertAtIndexInMediaList(int index, String item) =>
      mediaList.insert(index, item);
  void updateMediaListAtIndex(int index, Function(String) updateFn) =>
      mediaList[index] = updateFn(mediaList[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
