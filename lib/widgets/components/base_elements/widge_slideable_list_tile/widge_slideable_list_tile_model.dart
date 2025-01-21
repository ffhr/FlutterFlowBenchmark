import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'widge_slideable_list_tile_widget.dart'
    show WidgeSlideableListTileWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WidgeSlideableListTileModel
    extends FlutterFlowModel<WidgeSlideableListTileWidget> {
  ///  Local state fields for this component.

  List<String> listTiles = ['Tile1', 'Tile2', 'Tile3', 'Tile4', 'Tile5'];
  void addToListTiles(String item) => listTiles.add(item);
  void removeFromListTiles(String item) => listTiles.remove(item);
  void removeAtIndexFromListTiles(int index) => listTiles.removeAt(index);
  void insertAtIndexInListTiles(int index, String item) =>
      listTiles.insert(index, item);
  void updateListTilesAtIndex(int index, Function(String) updateFn) =>
      listTiles[index] = updateFn(listTiles[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
