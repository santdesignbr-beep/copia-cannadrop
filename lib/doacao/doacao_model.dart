import '/components/doacoes_widget.dart';
import '/components/navbarpaciente_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'doacao_widget.dart' show DoacaoWidget;
import 'package:flutter/material.dart';

class DoacaoModel extends FlutterFlowModel<DoacaoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for doacoes component.
  late DoacoesModel doacoesModel;
  // Model for navbarpaciente component.
  late NavbarpacienteModel navbarpacienteModel;

  @override
  void initState(BuildContext context) {
    doacoesModel = createModel(context, () => DoacoesModel());
    navbarpacienteModel = createModel(context, () => NavbarpacienteModel());
  }

  @override
  void dispose() {
    doacoesModel.dispose();
    navbarpacienteModel.dispose();
  }
}
