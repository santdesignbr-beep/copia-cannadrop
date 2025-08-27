import '/backend/backend.dart';
import '/components/navbarpacientes_colab_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'buscar_user_widget.dart' show BuscarUserWidget;
import 'package:flutter/material.dart';

class BuscarUserModel extends FlutterFlowModel<BuscarUserWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<UserRecord> simpleSearchResults = [];
  // Model for navbarpaciente.
  late NavbarpacientesColabModel navbarpacienteModel;

  @override
  void initState(BuildContext context) {
    navbarpacienteModel =
        createModel(context, () => NavbarpacientesColabModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navbarpacienteModel.dispose();
  }
}
