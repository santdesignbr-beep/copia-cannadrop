import '/components/navbarpacientes_colab_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'protocoloconsulta_widget.dart' show ProtocoloconsultaWidget;
import 'package:flutter/material.dart';

class ProtocoloconsultaModel extends FlutterFlowModel<ProtocoloconsultaWidget> {
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
  // State field(s) for motivo widget.
  FocusNode? motivoFocusNode;
  TextEditingController? motivoTextController;
  String? Function(BuildContext, String?)? motivoTextControllerValidator;
  // State field(s) for japensou widget.
  FocusNode? japensouFocusNode;
  TextEditingController? japensouTextController;
  String? Function(BuildContext, String?)? japensouTextControllerValidator;
  // State field(s) for patologia widget.
  FocusNode? patologiaFocusNode;
  TextEditingController? patologiaTextController;
  String? Function(BuildContext, String?)? patologiaTextControllerValidator;
  // State field(s) for cid widget.
  FocusNode? cidFocusNode;
  TextEditingController? cidTextController;
  String? Function(BuildContext, String?)? cidTextControllerValidator;
  // State field(s) for anvisa widget.
  FormFieldController<String>? anvisaValueController;
  // State field(s) for prescriocao widget.
  FormFieldController<String>? prescriocaoValueController;
  // State field(s) for custo widget.
  FormFieldController<String>? custoValueController;
  // State field(s) for obsconsulta widget.
  FocusNode? obsconsultaFocusNode;
  TextEditingController? obsconsultaTextController;
  String? Function(BuildContext, String?)? obsconsultaTextControllerValidator;
  // Model for navbarpaciente.
  late NavbarpacientesColabModel navbarpacienteModel;

  @override
  void initState(BuildContext context) {
    navbarpacienteModel =
        createModel(context, () => NavbarpacientesColabModel());
  }

  @override
  void dispose() {
    medicoFocusNode?.dispose();
    medicoTextController?.dispose();

    crmFocusNode?.dispose();
    crmTextController?.dispose();

    motivoFocusNode?.dispose();
    motivoTextController?.dispose();

    japensouFocusNode?.dispose();
    japensouTextController?.dispose();

    patologiaFocusNode?.dispose();
    patologiaTextController?.dispose();

    cidFocusNode?.dispose();
    cidTextController?.dispose();

    obsconsultaFocusNode?.dispose();
    obsconsultaTextController?.dispose();

    navbarpacienteModel.dispose();
  }

  /// Additional helper methods.
  String? get anvisaValue => anvisaValueController?.value;
  String? get prescriocaoValue => prescriocaoValueController?.value;
  String? get custoValue => custoValueController?.value;
}
