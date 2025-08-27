import '/components/navbarpaciente_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'consulta_acolhedor_widget.dart' show ConsultaAcolhedorWidget;
import 'package:flutter/material.dart';

class ConsultaAcolhedorModel extends FlutterFlowModel<ConsultaAcolhedorWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbarpaciente component.
  late NavbarpacienteModel navbarpacienteModel;

  @override
  void initState(BuildContext context) {
    navbarpacienteModel = createModel(context, () => NavbarpacienteModel());
  }

  @override
  void dispose() {
    navbarpacienteModel.dispose();
  }
}
