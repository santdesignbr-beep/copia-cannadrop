import '/flutter_flow/flutter_flow_util.dart';
import 'editarperfilmedico_widget.dart' show EditarperfilmedicoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditarperfilmedicoModel
    extends FlutterFlowModel<EditarperfilmedicoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_imagemedico = false;
  FFUploadedFile uploadedLocalFile_imagemedico =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_imagemedico = '';

  // State field(s) for nomemedico widget.
  FocusNode? nomemedicoFocusNode;
  TextEditingController? nomemedicoTextController;
  String? Function(BuildContext, String?)? nomemedicoTextControllerValidator;
  // State field(s) for especialidademedico widget.
  FocusNode? especialidademedicoFocusNode;
  TextEditingController? especialidademedicoTextController;
  String? Function(BuildContext, String?)?
      especialidademedicoTextControllerValidator;
  // State field(s) for crmmedico widget.
  FocusNode? crmmedicoFocusNode;
  TextEditingController? crmmedicoTextController;
  late MaskTextInputFormatter crmmedicoMask;
  String? Function(BuildContext, String?)? crmmedicoTextControllerValidator;
  // State field(s) for regiaomedico widget.
  FocusNode? regiaomedicoFocusNode;
  TextEditingController? regiaomedicoTextController;
  late MaskTextInputFormatter regiaomedicoMask;
  String? Function(BuildContext, String?)? regiaomedicoTextControllerValidator;
  // State field(s) for valormedico widget.
  FocusNode? valormedicoFocusNode;
  TextEditingController? valormedicoTextController;
  late MaskTextInputFormatter valormedicoMask;
  String? Function(BuildContext, String?)? valormedicoTextControllerValidator;
  // State field(s) for biomedico widget.
  FocusNode? biomedicoFocusNode;
  TextEditingController? biomedicoTextController;
  String? Function(BuildContext, String?)? biomedicoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomemedicoFocusNode?.dispose();
    nomemedicoTextController?.dispose();

    especialidademedicoFocusNode?.dispose();
    especialidademedicoTextController?.dispose();

    crmmedicoFocusNode?.dispose();
    crmmedicoTextController?.dispose();

    regiaomedicoFocusNode?.dispose();
    regiaomedicoTextController?.dispose();

    valormedicoFocusNode?.dispose();
    valormedicoTextController?.dispose();

    biomedicoFocusNode?.dispose();
    biomedicoTextController?.dispose();
  }
}
