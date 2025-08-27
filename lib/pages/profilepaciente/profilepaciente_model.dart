import '/components/navbarpacientes_colab_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profilepaciente_widget.dart' show ProfilepacienteWidget;
import 'package:flutter/material.dart';

class ProfilepacienteModel extends FlutterFlowModel<ProfilepacienteWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for navbarpaciente.
  late NavbarpacientesColabModel navbarpacienteModel;

  @override
  void initState(BuildContext context) {
    navbarpacienteModel =
        createModel(context, () => NavbarpacientesColabModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    navbarpacienteModel.dispose();
  }
}
