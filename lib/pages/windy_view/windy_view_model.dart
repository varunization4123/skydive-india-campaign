import '/flutter_flow/flutter_flow_util.dart';
import 'windy_view_widget.dart' show WindyViewWidget;
import 'package:flutter/material.dart';

class WindyViewModel extends FlutterFlowModel<WindyViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
