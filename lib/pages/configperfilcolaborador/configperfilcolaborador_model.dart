import '/components/navbarcolaborador_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'configperfilcolaborador_widget.dart' show ConfigperfilcolaboradorWidget;
import 'package:flutter/material.dart';

class ConfigperfilcolaboradorModel
    extends FlutterFlowModel<ConfigperfilcolaboradorWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_imageconfigcolab = false;
  FFUploadedFile uploadedLocalFile_imageconfigcolab =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_imageconfigcolab = '';

  // Model for navbarcolaborador component.
  late NavbarcolaboradorModel navbarcolaboradorModel;

  @override
  void initState(BuildContext context) {
    navbarcolaboradorModel =
        createModel(context, () => NavbarcolaboradorModel());
  }

  @override
  void dispose() {
    navbarcolaboradorModel.dispose();
  }
}
