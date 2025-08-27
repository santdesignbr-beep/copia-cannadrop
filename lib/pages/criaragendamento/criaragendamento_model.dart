import '/components/navbarpacientes_colab_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'criaragendamento_widget.dart' show CriaragendamentoWidget;
import 'package:flutter/material.dart';

class CriaragendamentoModel extends FlutterFlowModel<CriaragendamentoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for paciente widget.
  String? pacienteValue;
  FormFieldController<String>? pacienteValueController;
  DateTime? datePicked;
  // State field(s) for obs widget.
  FocusNode? obsFocusNode;
  TextEditingController? obsTextController;
  String? Function(BuildContext, String?)? obsTextControllerValidator;
  // Model for navbarpaciente.
  late NavbarpacientesColabModel navbarpacienteModel;

  @override
  void initState(BuildContext context) {
    navbarpacienteModel =
        createModel(context, () => NavbarpacientesColabModel());
  }

  @override
  void dispose() {
    obsFocusNode?.dispose();
    obsTextController?.dispose();

    navbarpacienteModel.dispose();
  }
}
