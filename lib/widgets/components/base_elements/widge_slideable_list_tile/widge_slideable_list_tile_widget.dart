import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widge_slideable_list_tile_model.dart';
export 'widge_slideable_list_tile_model.dart';

class WidgeSlideableListTileWidget extends StatefulWidget {
  const WidgeSlideableListTileWidget({
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
  State<WidgeSlideableListTileWidget> createState() =>
      _WidgeSlideableListTileWidgetState();
}

class _WidgeSlideableListTileWidgetState
    extends State<WidgeSlideableListTileWidget> {
  late WidgeSlideableListTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgeSlideableListTileModel());

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
            width: 400.0,
            decoration: BoxDecoration(),
            child: Builder(
              builder: (context) {
                final strings = _model.listTiles.toList();

                return ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: strings.length,
                  itemBuilder: (context, stringsIndex) {
                    final stringsItem = strings[stringsIndex];
                    return Slidable(
                      endActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        extentRatio: 0.25,
                        children: [
                          SlidableAction(
                            label: FFLocalizations.of(context).getText(
                              '3plw2gka' /* Delete */,
                            ),
                            backgroundColor: FlutterFlowTheme.of(context).error,
                            icon: Icons.delete_outline_rounded,
                            onPressed: (_) {
                              print('SlidableActionWidget pressed ...');
                            },
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: ListTile(
                          title: Text(
                            stringsItem,
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Geist',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                          subtitle: Text(
                            stringsItem,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Geist',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          dense: false,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
