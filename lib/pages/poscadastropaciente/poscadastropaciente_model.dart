import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'poscadastropaciente_widget.dart' show PoscadastropacienteWidget;
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class PoscadastropacienteModel
    extends FlutterFlowModel<PoscadastropacienteWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for criarassinaturapaciente widget.
  SignatureController? criarassinaturapacienteController;
  String uploadedSignatureUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    criarassinaturapacienteController?.dispose();
  }
}
