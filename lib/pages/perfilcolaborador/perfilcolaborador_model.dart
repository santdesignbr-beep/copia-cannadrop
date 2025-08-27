import '/components/navbarcolaborador_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'perfilcolaborador_widget.dart' show PerfilcolaboradorWidget;
import 'package:flutter/material.dart';

class PerfilcolaboradorModel extends FlutterFlowModel<PerfilcolaboradorWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbarcolaborador component.
  late NavbarcolaboradorModel navbarcolaboradorModel;

  @override
  void initState(BuildContext context) {
    navbarcolaboradorModel =
        createModel(context, () => NavbarcolaboradorModel());
  }

  @override
  void dispose() {
    navbarcolaboradorModel.dispose();
  }
}
