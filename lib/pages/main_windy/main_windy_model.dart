import '/components/web_components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_windy_widget.dart' show MainWindyWidget;
import 'package:flutter/material.dart';

class MainWindyModel extends FlutterFlowModel<MainWindyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Side_nav component.
  late SideNavModel sideNavModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
  }
}
