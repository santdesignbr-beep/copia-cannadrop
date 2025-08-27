import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'cadastromenor_widget.dart' show CadastromenorWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

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
