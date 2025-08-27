import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'cadastromenor_widget.dart' show CadastromenorWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastromenorModel extends FlutterFlowModel<CadastromenorWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_editarfotomenor = false;
  FFUploadedFile uploadedLocalFile_editarfotomenor =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_editarfotomenor = '';

  // State field(s) for nomemenor widget.
  FocusNode? nomemenorFocusNode;
  TextEditingController? nomemenorTextController;
  String? Function(BuildContext, String?)? nomemenorTextControllerValidator;
  String? _nomemenorTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é obrigatório.';
    }

    return null;
  }

  // State field(s) for escolaridademenor widget.
  String? escolaridademenorValue;
  FormFieldController<String>? escolaridademenorValueController;
  // State field(s) for GraudeParentesco widget.
  FocusNode? graudeParentescoFocusNode;
  TextEditingController? graudeParentescoTextController;
  String? Function(BuildContext, String?)?
      graudeParentescoTextControllerValidator;
  // State field(s) for nacionalidademenor widget.
  FocusNode? nacionalidademenorFocusNode;
  TextEditingController? nacionalidademenorTextController;
  String? Function(BuildContext, String?)?
      nacionalidademenorTextControllerValidator;
  String? _nacionalidademenorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é obrigatório.';
    }

    return null;
  }

  // State field(s) for datanascimenor widget.
  FocusNode? datanascimenorFocusNode;
  TextEditingController? datanascimenorTextController;
  late MaskTextInputFormatter datanascimenorMask;
  String? Function(BuildContext, String?)?
      datanascimenorTextControllerValidator;
  String? _datanascimenorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é obrigatório.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nomemenorTextControllerValidator = _nomemenorTextControllerValidator;
    nacionalidademenorTextControllerValidator =
        _nacionalidademenorTextControllerValidator;
    datanascimenorTextControllerValidator =
        _datanascimenorTextControllerValidator;
  }

  @override
  void dispose() {
    nomemenorFocusNode?.dispose();
    nomemenorTextController?.dispose();

    graudeParentescoFocusNode?.dispose();
    graudeParentescoTextController?.dispose();

    nacionalidademenorFocusNode?.dispose();
    nacionalidademenorTextController?.dispose();

    datanascimenorFocusNode?.dispose();
    datanascimenorTextController?.dispose();
  }
}
