import '/components/ligacao_widget.dart';
import '/components/navbarpaciente_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'contato_widget.dart' show ContatoWidget;
import 'package:flutter/material.dart';

class ContatoModel extends FlutterFlowModel<ContatoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ligacao component.
  late LigacaoModel ligacaoModel;
  // Model for navbarpaciente component.
  late NavbarpacienteModel navbarpacienteModel;

  @override
  void initState(BuildContext context) {
    ligacaoModel = createModel(context, () => LigacaoModel());
    navbarpacienteModel = createModel(context, () => NavbarpacienteModel());
  }

  @override
  void dispose() {
    ligacaoModel.dispose();
    navbarpacienteModel.dispose();
  }
}
