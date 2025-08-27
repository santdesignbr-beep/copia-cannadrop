import '/components/navbarpacientes_colab_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'detalhesredecannadrop_widget.dart' show DetalhesredecannadropWidget;
import 'package:flutter/material.dart';

class DetalhesredecannadropModel
    extends FlutterFlowModel<DetalhesredecannadropWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for qualidadedesono widget.
  double? qualidadedesonoValue;
  // State field(s) for energia widget.
  double? energiaValue;
  // State field(s) for recuperaop widget.
  double? recuperaopValue;
  // State field(s) for digestao widget.
  double? digestaoValue;
  // State field(s) for concentracao widget.
  double? concentracaoValue;
  // State field(s) for forca widget.
  double? forcaValue;
  // State field(s) for coordencao widget.
  double? coordencaoValue;
  // State field(s) for apetite widget.
  double? apetiteValue;
  // State field(s) for ansiedade widget.
  double? ansiedadeValue;
  // State field(s) for stress widget.
  double? stressValue;
  // State field(s) for dor widget.
  double? dorValue;
  // State field(s) for Vocseconsiderasocivel widget.
  double? vocseconsiderasocivelValue;
  // Model for navbarpaciente.
  late NavbarpacientesColabModel navbarpacienteModel;

  @override
  void initState(BuildContext context) {
    navbarpacienteModel =
        createModel(context, () => NavbarpacientesColabModel());
  }

  @override
  void dispose() {
    navbarpacienteModel.dispose();
  }
}
