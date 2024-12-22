import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget_rich_text_model.dart';
export 'widget_rich_text_model.dart';

class WidgetRichTextWidget extends StatefulWidget {
  const WidgetRichTextWidget({super.key});

  @override
  State<WidgetRichTextWidget> createState() => _WidgetRichTextWidgetState();
}

class _WidgetRichTextWidgetState extends State<WidgetRichTextWidget> {
  late WidgetRichTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WidgetRichTextModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
