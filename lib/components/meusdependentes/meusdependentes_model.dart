import '/components/navbarcolaborador_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'meusdependentes_widget.dart' show MeusdependentesWidget;
import 'package:flutter/material.dart';

class MeusdependentesModel extends FlutterFlowModel<MeusdependentesWidget> {
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
