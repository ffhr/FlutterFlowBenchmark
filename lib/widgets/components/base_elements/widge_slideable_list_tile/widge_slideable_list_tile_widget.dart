import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
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
                        extentRatio: 0.75,
                        children: [
                          SlidableAction(
                            label: FFLocalizations.of(context).getText(
                              'lasvuja4' /* Share */,
                            ),
                            backgroundColor: FlutterFlowTheme.of(context).info,
                            icon: Icons.share,
                            onPressed: (_) async {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      title: Text('Share'),
                                      content: Text(stringsItem),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          SlidableAction(
                            label: FFLocalizations.of(context).getText(
                              '9j0nsklj' /* Rename */,
                            ),
                            backgroundColor: Color(0xFF88C2FF),
                            icon: Icons.drive_file_rename_outline,
                            onPressed: (_) {
                              print('RenameAction pressed ...');
                            },
                          ),
                          SlidableAction(
                            label: FFLocalizations.of(context).getText(
                              'jbgt670d' /* Delete */,
                            ),
                            backgroundColor: FlutterFlowTheme.of(context).error,
                            icon: Icons.delete_sweep_sharp,
                            onPressed: (_) async {
                              _model.removeFromListTiles(stringsItem);
                              safeSetState(() {});
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
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                          subtitle: Text(
                            FFLocalizations.of(context).getText(
                              'pzaf969q' /* Subtitle goes here... */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Geist',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          dense: false,
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
