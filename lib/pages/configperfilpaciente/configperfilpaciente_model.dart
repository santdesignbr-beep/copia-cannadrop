import '/components/navbarpacientes_colab_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'configperfilpaciente_widget.dart' show ConfigperfilpacienteWidget;
import 'package:flutter/material.dart';

class ConfigperfilpacienteModel
    extends FlutterFlowModel<ConfigperfilpacienteWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_imageconfigpaciente = false;
  FFUploadedFile uploadedLocalFile_imageconfigpaciente =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_imageconfigpaciente = '';

  // Model for navbarmedico.
  late NavbarpacientesColabModel navbarmedicoModel;

  @override
  void initState(BuildContext context) {
    navbarmedicoModel = createModel(context, () => NavbarpacientesColabModel());
  }

  @override
  void dispose() {
    navbarmedicoModel.dispose();
  }
}
