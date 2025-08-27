import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'cadastro1_widget.dart' show Cadastro1Widget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Cadastro1Model extends FlutterFlowModel<Cadastro1Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  bool isDataUploading_uploadDataMvkk = false;
  FFUploadedFile uploadedLocalFile_uploadDataMvkk =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataMvkk = '';

  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  String? _nomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é obrigatório.';
    }

    return null;
  }

  // State field(s) for sobrenome widget.
  FocusNode? sobrenomeFocusNode;
  TextEditingController? sobrenomeTextController;
  String? Function(BuildContext, String?)? sobrenomeTextControllerValidator;
  // State field(s) for telpacientepc widget.
  FocusNode? telpacientepcFocusNode1;
  TextEditingController? telpacientepcTextController1;
  late MaskTextInputFormatter telpacientepcMask1;
  String? Function(BuildContext, String?)?
      telpacientepcTextController1Validator;
  String? _telpacientepcTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é obrigatório.';
    }

    return null;
  }

  // State field(s) for estadocivilpacientepc widget.
  String? estadocivilpacientepcValue1;
  FormFieldController<String>? estadocivilpacientepcValueController1;
  // State field(s) for nacionalidadepacientepc widget.
  FocusNode? nacionalidadepacientepcFocusNode1;
  TextEditingController? nacionalidadepacientepcTextController1;
  String? Function(BuildContext, String?)?
      nacionalidadepacientepcTextController1Validator;
  String? _nacionalidadepacientepcTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é obrigatório.';
    }

    return null;
  }

  // State field(s) for datanascpacientepc widget.
  FocusNode? datanascpacientepcFocusNode1;
  TextEditingController? datanascpacientepcTextController1;
  late MaskTextInputFormatter datanascpacientepcMask1;
  String? Function(BuildContext, String?)?
      datanascpacientepcTextController1Validator;
  String? _datanascpacientepcTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é obrigatório.';
    }

    return null;
  }

  // State field(s) for profissaopacientepc widget.
  FocusNode? profissaopacientepcFocusNode1;
  TextEditingController? profissaopacientepcTextController1;
  String? Function(BuildContext, String?)?
      profissaopacientepcTextController1Validator;
  String? _profissaopacientepcTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é obrigatório.';
    }

    return null;
  }

  bool isDataUploading_uploadDataMvk = false;
  FFUploadedFile uploadedLocalFile_uploadDataMvk =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataMvk = '';

  // State field(s) for nomepacientepc widget.
  FocusNode? nomepacientepcFocusNode;
  TextEditingController? nomepacientepcTextController;
  String? Function(BuildContext, String?)?
      nomepacientepcTextControllerValidator;
  // State field(s) for sobrenomepc widget.
  FocusNode? sobrenomepcFocusNode;
  TextEditingController? sobrenomepcTextController;
  String? Function(BuildContext, String?)? sobrenomepcTextControllerValidator;
  // State field(s) for telpacientepc widget.
  FocusNode? telpacientepcFocusNode2;
  TextEditingController? telpacientepcTextController2;
  late MaskTextInputFormatter telpacientepcMask2;
  String? Function(BuildContext, String?)?
      telpacientepcTextController2Validator;
  // State field(s) for estadocivilpacientepc widget.
  String? estadocivilpacientepcValue2;
  FormFieldController<String>? estadocivilpacientepcValueController2;
  // State field(s) for nacionalidadepacientepc widget.
  FocusNode? nacionalidadepacientepcFocusNode2;
  TextEditingController? nacionalidadepacientepcTextController2;
  String? Function(BuildContext, String?)?
      nacionalidadepacientepcTextController2Validator;
  // State field(s) for datanascpacientepc widget.
  FocusNode? datanascpacientepcFocusNode2;
  TextEditingController? datanascpacientepcTextController2;
  late MaskTextInputFormatter datanascpacientepcMask2;
  String? Function(BuildContext, String?)?
      datanascpacientepcTextController2Validator;
  // State field(s) for profissaopacientepc widget.
  FocusNode? profissaopacientepcFocusNode2;
  TextEditingController? profissaopacientepcTextController2;
  String? Function(BuildContext, String?)?
      profissaopacientepcTextController2Validator;

  @override
  void initState(BuildContext context) {
    nomeTextControllerValidator = _nomeTextControllerValidator;
    telpacientepcTextController1Validator =
        _telpacientepcTextController1Validator;
    nacionalidadepacientepcTextController1Validator =
        _nacionalidadepacientepcTextController1Validator;
    datanascpacientepcTextController1Validator =
        _datanascpacientepcTextController1Validator;
    profissaopacientepcTextController1Validator =
        _profissaopacientepcTextController1Validator;
  }

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    sobrenomeFocusNode?.dispose();
    sobrenomeTextController?.dispose();

    telpacientepcFocusNode1?.dispose();
    telpacientepcTextController1?.dispose();

    nacionalidadepacientepcFocusNode1?.dispose();
    nacionalidadepacientepcTextController1?.dispose();

    datanascpacientepcFocusNode1?.dispose();
    datanascpacientepcTextController1?.dispose();

    profissaopacientepcFocusNode1?.dispose();
    profissaopacientepcTextController1?.dispose();

    nomepacientepcFocusNode?.dispose();
    nomepacientepcTextController?.dispose();

    sobrenomepcFocusNode?.dispose();
    sobrenomepcTextController?.dispose();

    telpacientepcFocusNode2?.dispose();
    telpacientepcTextController2?.dispose();

    nacionalidadepacientepcFocusNode2?.dispose();
    nacionalidadepacientepcTextController2?.dispose();

    datanascpacientepcFocusNode2?.dispose();
    datanascpacientepcTextController2?.dispose();

    profissaopacientepcFocusNode2?.dispose();
    profissaopacientepcTextController2?.dispose();
  }
}
