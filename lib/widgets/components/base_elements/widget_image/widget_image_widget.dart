import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_image_model.dart';
export 'widget_image_model.dart';

class WidgetImageWidget extends StatefulWidget {
  const WidgetImageWidget({
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
  State<WidgetImageWidget> createState() => _WidgetImageWidgetState();
}

class _WidgetImageWidgetState extends State<WidgetImageWidget> {
  late WidgetImageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetImageModel());

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
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 500.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'idcr1qzw' /* Fill */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Geist',
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1665194653893-e5c58037fd0b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMXx8Y2FsbWluZyUyMG5hdHVyZXxlbnwwfHx8fDE3Mzc0ODIyOTF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '96d15v6f' /* Contain */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Geist',
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1665194653893-e5c58037fd0b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMXx8Y2FsbWluZyUyMG5hdHVyZXxlbnwwfHx8fDE3Mzc0ODIyOTF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'wjbnpo0h' /* Fit Width */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Geist',
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1665194653893-e5c58037fd0b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMXx8Y2FsbWluZyUyMG5hdHVyZXxlbnwwfHx8fDE3Mzc0ODIyOTF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'dwyk1tan' /* None. Center the widget and cr... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Geist',
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1665194653893-e5c58037fd0b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMXx8Y2FsbWluZyUyMG5hdHVyZXxlbnwwfHx8fDE3Mzc0ODIyOTF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.none,
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'm90tugyx' /* Different sizes */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Geist',
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1665194653893-e5c58037fd0b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMXx8Y2FsbWluZyUyMG5hdHVyZXxlbnwwfHx8fDE3Mzc0ODIyOTF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                            width: 50.0,
                            height: 50.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1665194653893-e5c58037fd0b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMXx8Y2FsbWluZyUyMG5hdHVyZXxlbnwwfHx8fDE3Mzc0ODIyOTF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1665194653893-e5c58037fd0b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMXx8Y2FsbWluZyUyMG5hdHVyZXxlbnwwfHx8fDE3Mzc0ODIyOTF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                            width: 150.0,
                            height: 30.0,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ]
                          .divide(SizedBox(width: 16.0))
                          .around(SizedBox(width: 16.0)),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 200.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1665194653893-e5c58037fd0b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMXx8Y2FsbWluZyUyMG5hdHVyZXxlbnwwfHx8fDE3Mzc0ODIyOTF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                              width: 70.0,
                              height: 150.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1665194653893-e5c58037fd0b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMXx8Y2FsbWluZyUyMG5hdHVyZXxlbnwwfHx8fDE3Mzc0ODIyOTF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                              width: 10.0,
                              height: 45.0,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1665194653893-e5c58037fd0b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMXx8Y2FsbWluZyUyMG5hdHVyZXxlbnwwfHx8fDE3Mzc0ODIyOTF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                              width: 67.0,
                              height: 99.0,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ]
                            .divide(SizedBox(width: 16.0))
                            .around(SizedBox(width: 16.0)),
                      ),
                    ),
                  ]
                      .divide(SizedBox(height: 24.0))
                      .around(SizedBox(height: 24.0)),
                ),
              ),
            ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
