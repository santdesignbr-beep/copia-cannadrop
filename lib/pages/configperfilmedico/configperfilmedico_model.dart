import '/components/navbarpacientes_colab_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'configperfilmedico_widget.dart' show ConfigperfilmedicoWidget;
import 'package:flutter/material.dart';

class ConfigperfilmedicoModel
    extends FlutterFlowModel<ConfigperfilmedicoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbarmedico.
  late NavbarpacientesColabModel navbarmedicoModel;

  @override
  void initState(BuildContext context) {
    navbarmedicoModel = createModel(context, () => NavbarpacientesColabModel());
  }

  @override
  void dispose() {
    navbarmedicoModel.dispose();
  }
}
