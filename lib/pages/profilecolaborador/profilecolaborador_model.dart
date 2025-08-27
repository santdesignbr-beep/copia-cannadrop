import '/components/navbarcolaborador_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profilecolaborador_widget.dart' show ProfilecolaboradorWidget;
import 'package:flutter/material.dart';

class ProfilecolaboradorModel
    extends FlutterFlowModel<ProfilecolaboradorWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for navbarcolaborador component.
  late NavbarcolaboradorModel navbarcolaboradorModel;

  @override
  void initState(BuildContext context) {
    navbarcolaboradorModel =
        createModel(context, () => NavbarcolaboradorModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    navbarcolaboradorModel.dispose();
  }
}
