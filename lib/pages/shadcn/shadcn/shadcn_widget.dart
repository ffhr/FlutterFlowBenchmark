import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:shadcn_u_i_kit_v48jv9/flutter_flow/flutter_flow_util.dart'
    as shadcn_u_i_kit_v48jv9_util
    show wrapWithModel, createModel, FlutterFlowDynamicModels;
import 'package:shadcn_u_i_kit_v48jv9/library_components/accordion/accordion_widget.dart'
    as shadcn_u_i_kit_v48jv9;
import 'package:shadcn_u_i_kit_v48jv9/library_components/alert/alert_widget.dart'
    as shadcn_u_i_kit_v48jv9;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shadcn_model.dart';
export 'shadcn_model.dart';

class ShadcnWidget extends StatefulWidget {
  const ShadcnWidget({super.key});

  @override
  State<ShadcnWidget> createState() => _ShadcnWidgetState();
}

class _ShadcnWidgetState extends State<ShadcnWidget> {
  late ShadcnModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShadcnModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'ir1nlko1' /* shadcn/ui */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Geist',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                shadcn_u_i_kit_v48jv9_util.wrapWithModel(
                  model: _model.accordionModel,
                  updateCallback: () => safeSetState(() {}),
                  child: shadcn_u_i_kit_v48jv9.AccordionWidget(
                    header: 'Header',
                    content: 'Content',
                  ),
                ),
                shadcn_u_i_kit_v48jv9_util.wrapWithModel(
                  model: _model.alertModel,
                  updateCallback: () => safeSetState(() {}),
                  child: shadcn_u_i_kit_v48jv9.AlertWidget(
                    isDestructive: false,
                    title: 'Title 123',
                    description: 'Description 123',
                    icon: Icon(
                      Icons.ten_k_outlined,
                    ),
                  ),
                ),
              ]
                  .divide(SizedBox(height: 16.0))
                  .addToStart(SizedBox(height: 16.0))
                  .addToEnd(SizedBox(height: 128.0)),
            ),
          ),
        ),
      ),
    );
  }
}
