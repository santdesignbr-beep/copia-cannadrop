import '/components/navbarpaciente_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'documen_widget.dart' show DocumenWidget;
import 'package:flutter/material.dart';

class DocumenModel extends FlutterFlowModel<DocumenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for navbarpaciente component.
  late NavbarpacienteModel navbarpacienteModel;

  @override
  void initState(BuildContext context) {
    navbarpacienteModel = createModel(context, () => NavbarpacienteModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    navbarpacienteModel.dispose();
  }
}
