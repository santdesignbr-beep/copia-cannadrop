import '/components/navbarcolaborador_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'perfilpaciente_widget.dart' show PerfilpacienteWidget;
import 'package:flutter/material.dart';

class PerfilpacienteModel extends FlutterFlowModel<PerfilpacienteWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Documento widget.
  TabController? documentoController;
  int get documentoCurrentIndex =>
      documentoController != null ? documentoController!.index : 0;
  int get documentoPreviousIndex =>
      documentoController != null ? documentoController!.previousIndex : 0;

  // Model for navbarcolaborador component.
  late NavbarcolaboradorModel navbarcolaboradorModel;

  @override
  void initState(BuildContext context) {
    navbarcolaboradorModel =
        createModel(context, () => NavbarcolaboradorModel());
  }

  @override
  void dispose() {
    documentoController?.dispose();
    navbarcolaboradorModel.dispose();
  }
}
