import '/components/navbarpaciente_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'comoestoumesentindo_widget.dart' show ComoestoumesentindoWidget;
import 'package:flutter/material.dart';

class ComoestoumesentindoModel
    extends FlutterFlowModel<ComoestoumesentindoWidget> {
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
