import '/components/navbarpaciente_widget.dart';
import '/flutter_flow/chat/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'all_chats_widget.dart' show AllChatsWidget;
import 'package:flutter/material.dart';

class AllChatsModel extends FlutterFlowModel<AllChatsWidget> {
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
