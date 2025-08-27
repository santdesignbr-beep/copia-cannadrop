import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'cadastroassociados_widget.dart' show CadastroassociadosWidget;
import 'dart:math' as math;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CadastroassociadosModel
    extends FlutterFlowModel<CadastroassociadosWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for nomepaciente widget.
  FocusNode? nomepacienteFocusNode;
  TextEditingController? nomepacienteTextController;
  String? Function(BuildContext, String?)? nomepacienteTextControllerValidator;
  // State field(s) for telefonepaciente widget.
  FocusNode? telefonepacienteFocusNode;
  TextEditingController? telefonepacienteTextController;
  String? Function(BuildContext, String?)?
      telefonepacienteTextControllerValidator;
  // State field(s) for estadocivilpaciente widget.
  String? estadocivilpacienteValue;
  FormFieldController<String>? estadocivilpacienteValueController;
  // State field(s) for nacionalidadepaciente widget.
  FocusNode? nacionalidadepacienteFocusNode;
  TextEditingController? nacionalidadepacienteTextController;
  String? Function(BuildContext, String?)?
      nacionalidadepacienteTextControllerValidator;
  // State field(s) for datanascipaciente widget.
  FocusNode? datanascipacienteFocusNode;
  TextEditingController? datanascipacienteTextController;
  late MaskTextInputFormatter datanascipacienteMask;
  String? Function(BuildContext, String?)?
      datanascipacienteTextControllerValidator;
  // State field(s) for profissaopaciente widget.
  FocusNode? profissaopacienteFocusNode;
  TextEditingController? profissaopacienteTextController;
  String? Function(BuildContext, String?)?
      profissaopacienteTextControllerValidator;
  // State field(s) for nomemedico widget.
  FocusNode? nomemedicoFocusNode;
  TextEditingController? nomemedicoTextController;
  String? Function(BuildContext, String?)? nomemedicoTextControllerValidator;
  String? _nomemedicoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório.';
    }

    return null;
  }

  // State field(s) for especialidademedico widget.
  FocusNode? especialidademedicoFocusNode;
  TextEditingController? especialidademedicoTextController;
  String? Function(BuildContext, String?)?
      especialidademedicoTextControllerValidator;
  String? _especialidademedicoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório.';
    }

    return null;
  }

  // State field(s) for crmmedico widget.
  FocusNode? crmmedicoFocusNode;
  TextEditingController? crmmedicoTextController;
  late MaskTextInputFormatter crmmedicoMask;
  String? Function(BuildContext, String?)? crmmedicoTextControllerValidator;
  String? _crmmedicoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório.';
    }

    return null;
  }

  // State field(s) for regiaomedico widget.
  FocusNode? regiaomedicoFocusNode;
  TextEditingController? regiaomedicoTextController;
  late MaskTextInputFormatter regiaomedicoMask;
  String? Function(BuildContext, String?)? regiaomedicoTextControllerValidator;
  String? _regiaomedicoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório.';
    }

    return null;
  }

  // State field(s) for valormedico widget.
  FocusNode? valormedicoFocusNode;
  TextEditingController? valormedicoTextController;
  late MaskTextInputFormatter valormedicoMask;
  String? Function(BuildContext, String?)? valormedicoTextControllerValidator;
  String? _valormedicoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório.';
    }

    return null;
  }

  // State field(s) for nomecolaborador widget.
  FocusNode? nomecolaboradorFocusNode;
  TextEditingController? nomecolaboradorTextController;
  String? Function(BuildContext, String?)?
      nomecolaboradorTextControllerValidator;
  String? _nomecolaboradorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório.';
    }

    return null;
  }

  // State field(s) for Dropregiaocolaborador widget.
  String? dropregiaocolaboradorValue;
  FormFieldController<String>? dropregiaocolaboradorValueController;
  // State field(s) for codigocolabordaor widget.
  FocusNode? codigocolabordaorFocusNode;
  TextEditingController? codigocolabordaorTextController;
  String? Function(BuildContext, String?)?
      codigocolabordaorTextControllerValidator;
  String? _codigocolabordaorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório.';
    }

    return null;
  }

  // State field(s) for departamentocolaborador widget.
  String? departamentocolaboradorValue;
  FormFieldController<String>? departamentocolaboradorValueController;

  @override
  void initState(BuildContext context) {
    nomemedicoTextControllerValidator = _nomemedicoTextControllerValidator;
    especialidademedicoTextControllerValidator =
        _especialidademedicoTextControllerValidator;
    crmmedicoTextControllerValidator = _crmmedicoTextControllerValidator;
    regiaomedicoTextControllerValidator = _regiaomedicoTextControllerValidator;
    valormedicoTextControllerValidator = _valormedicoTextControllerValidator;
    nomecolaboradorTextControllerValidator =
        _nomecolaboradorTextControllerValidator;
    codigocolabordaorTextControllerValidator =
        _codigocolabordaorTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    nomepacienteFocusNode?.dispose();
    nomepacienteTextController?.dispose();

    telefonepacienteFocusNode?.dispose();
    telefonepacienteTextController?.dispose();

    nacionalidadepacienteFocusNode?.dispose();
    nacionalidadepacienteTextController?.dispose();

    datanascipacienteFocusNode?.dispose();
    datanascipacienteTextController?.dispose();

    profissaopacienteFocusNode?.dispose();
    profissaopacienteTextController?.dispose();

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

    nomecolaboradorFocusNode?.dispose();
    nomecolaboradorTextController?.dispose();

    codigocolabordaorFocusNode?.dispose();
    codigocolabordaorTextController?.dispose();
  }
}
