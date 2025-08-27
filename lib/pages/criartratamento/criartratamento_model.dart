import '/components/navbarcolaborador_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'criartratamento_widget.dart' show CriartratamentoWidget;
import 'package:flutter/material.dart';

class CriartratamentoModel extends FlutterFlowModel<CriartratamentoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for paciente widget.
  String? pacienteValue;
  FormFieldController<String>? pacienteValueController;
  // State field(s) for medico widget.
  FocusNode? medicoFocusNode;
  TextEditingController? medicoTextController;
  String? Function(BuildContext, String?)? medicoTextControllerValidator;
  // State field(s) for CRM widget.
  FocusNode? crmFocusNode;
  TextEditingController? crmTextController;
  String? Function(BuildContext, String?)? crmTextControllerValidator;
  // State field(s) for extrato widget.
  String? extratoValue;
  FormFieldController<String>? extratoValueController;
  // State field(s) for concentracao widget.
  String? concentracaoValue;
  FormFieldController<String>? concentracaoValueController;
  // State field(s) for dose widget.
  String? doseValue;
  FormFieldController<String>? doseValueController;
  // State field(s) for quantasx widget.
  String? quantasxValue;
  FormFieldController<String>? quantasxValueController;
  // State field(s) for obs widget.
  FocusNode? obsFocusNode;
  TextEditingController? obsTextController;
  String? Function(BuildContext, String?)? obsTextControllerValidator;
  // Model for navbarcolaborador component.
  late NavbarcolaboradorModel navbarcolaboradorModel;

  @override
  void initState(BuildContext context) {
    navbarcolaboradorModel =
        createModel(context, () => NavbarcolaboradorModel());
  }

  @override
  void dispose() {
    medicoFocusNode?.dispose();
    medicoTextController?.dispose();

    crmFocusNode?.dispose();
    crmTextController?.dispose();

    obsFocusNode?.dispose();
    obsTextController?.dispose();

    navbarcolaboradorModel.dispose();
  }
}
