import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/navbarpaciente_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'editarperfilpaciente_widget.dart' show EditarperfilpacienteWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarperfilpacienteModel
    extends FlutterFlowModel<EditarperfilpacienteWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_imagepacient = false;
  FFUploadedFile uploadedLocalFile_imagepacient =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_imagepacient = '';

  // State field(s) for telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  // State field(s) for estadocivil widget.
  String? estadocivilValue;
  FormFieldController<String>? estadocivilValueController;
  // State field(s) for nascionalidade widget.
  FocusNode? nascionalidadeFocusNode;
  TextEditingController? nascionalidadeTextController;
  String? Function(BuildContext, String?)?
      nascionalidadeTextControllerValidator;
  // State field(s) for datanasci widget.
  FocusNode? datanasciFocusNode;
  TextEditingController? datanasciTextController;
  String? Function(BuildContext, String?)? datanasciTextControllerValidator;
  // State field(s) for profissiao widget.
  FocusNode? profissiaoFocusNode;
  TextEditingController? profissiaoTextController;
  String? Function(BuildContext, String?)? profissiaoTextControllerValidator;
  // Model for navbarpaciente component.
  late NavbarpacienteModel navbarpacienteModel;

  @override
  void initState(BuildContext context) {
    navbarpacienteModel = createModel(context, () => NavbarpacienteModel());
  }

  @override
  void dispose() {
    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    nascionalidadeFocusNode?.dispose();
    nascionalidadeTextController?.dispose();

    datanasciFocusNode?.dispose();
    datanasciTextController?.dispose();

    profissiaoFocusNode?.dispose();
    profissiaoTextController?.dispose();

    navbarpacienteModel.dispose();
  }
}
