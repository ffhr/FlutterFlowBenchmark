import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widgets/components/base_elements/widget_text/widget_text_widget.dart';
import '/widgets/components/layout_elements/widget_card/widget_card_widget.dart';
import '/widgets/components/layout_elements/widget_column/widget_column_widget.dart';
import '/widgets/components/layout_elements/widget_container/widget_container_widget.dart';
import '/widgets/components/layout_elements/widget_row/widget_row_widget.dart';
import '/widgets/components/layout_elements/widget_stack/widget_stack_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_page_model.dart';
export 'widget_page_model.dart';

class WidgetPageWidget extends StatefulWidget {
  const WidgetPageWidget({
    super.key,
    required this.widgetTitle,
    required this.slug,
  });

  final String? widgetTitle;
  final String? slug;

  @override
  State<WidgetPageWidget> createState() => _WidgetPageWidgetState();
}

class _WidgetPageWidgetState extends State<WidgetPageWidget> {
  late WidgetPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetPageModel());

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
            valueOrDefault<String>(
              widget!.widgetTitle,
              'n/a',
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Builder(
                builder: (context) {
                  if (widget!.widgetTitle == 'Text') {
                    return wrapWithModel(
                      model: _model.widgetTextModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetTextWidget(),
                    );
                  } else if (widget!.widgetTitle == 'Container') {
                    return wrapWithModel(
                      model: _model.widgetContainerModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetContainerWidget(),
                    );
                  } else if (widget!.widgetTitle == 'Row') {
                    return wrapWithModel(
                      model: _model.widgetRowModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetRowWidget(),
                    );
                  } else if (widget!.widgetTitle == 'Column') {
                    return wrapWithModel(
                      model: _model.widgetColumnModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetColumnWidget(),
                    );
                  } else if (widget!.widgetTitle == 'Stack') {
                    return wrapWithModel(
                      model: _model.widgetStackModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetStackWidget(),
                    );
                  } else if (widget!.widgetTitle == 'Card') {
                    return wrapWithModel(
                      model: _model.widgetCardModel,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetCardWidget(),
                    );
                  } else {
                    return wrapWithModel(
                      model: _model.widgetTextModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: WidgetTextWidget(),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
