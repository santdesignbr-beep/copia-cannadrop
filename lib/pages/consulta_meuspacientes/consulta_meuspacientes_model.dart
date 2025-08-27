import '/components/navbarpacientes_colab_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'consulta_meuspacientes_widget.dart' show ConsultaMeuspacientesWidget;
import 'package:flutter/material.dart';

class ConsultaMeuspacientesModel
    extends FlutterFlowModel<ConsultaMeuspacientesWidget> {
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
