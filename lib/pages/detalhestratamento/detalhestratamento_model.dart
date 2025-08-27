import '/components/navbarpacientes_colab_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'detalhestratamento_widget.dart' show DetalhestratamentoWidget;
import 'package:flutter/material.dart';

class DetalhestratamentoModel
    extends FlutterFlowModel<DetalhestratamentoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for navbarpacientes_colab component.
  late NavbarpacientesColabModel navbarpacientesColabModel;

  @override
  void initState(BuildContext context) {
    navbarpacientesColabModel =
        createModel(context, () => NavbarpacientesColabModel());
  }

  @override
  void dispose() {
    navbarpacientesColabModel.dispose();
  }
}
