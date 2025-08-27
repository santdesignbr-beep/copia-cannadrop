import '/components/navbarpacientes_colab_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'detalheconsulta_widget.dart' show DetalheconsultaWidget;
import 'package:flutter/material.dart';

class DetalheconsultaModel extends FlutterFlowModel<DetalheconsultaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbarpacientes_colab component.
  late NavbarpacientesColabModel navbarpacientesColabModel;

  @override
  void initState(BuildContext context) {
    navbarpacientesColabModel =
        createModel(context, () => NavbarpacientesColabModel());
  }

  @override
  void dispose() {
    navbarpacientesColabModel.dispose();
  }
}
