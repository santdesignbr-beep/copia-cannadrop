import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/navbarpacientes_colab_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'redecannadropold_widget.dart' show RedecannadropoldWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RedecannadropoldModel extends FlutterFlowModel<RedecannadropoldWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for qualidadedesono widget.
  double? qualidadedesonoValue;
  // State field(s) for energia widget.
  double? energiaValue;
  // State field(s) for recuperacao widget.
  double? recuperacaoValue;
  // State field(s) for digestao widget.
  double? digestaoValue;
  // State field(s) for concentracao widget.
  double? concentracaoValue;
  // State field(s) for forca widget.
  double? forcaValue;
  // State field(s) for coordenacao widget.
  double? coordenacaoValue;
  // State field(s) for ansiedade widget.
  double? ansiedadeValue;
  // State field(s) for Stress widget.
  double? stressValue;
  // State field(s) for dor widget.
  double? dorValue;
  // State field(s) for Vocseconsiderasocivel widget.
  double? vocseconsiderasocivelValue;
  // State field(s) for Apetite widget.
  double? apetiteValue;
  // State field(s) for alguimtipodeprobelma widget.
  FocusNode? alguimtipodeprobelmaFocusNode;
  TextEditingController? alguimtipodeprobelmaTextController;
  String? Function(BuildContext, String?)?
      alguimtipodeprobelmaTextControllerValidator;
  String? _alguimtipodeprobelmaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório.';
    }

    return null;
  }

  // State field(s) for peso widget.
  FocusNode? pesoFocusNode;
  TextEditingController? pesoTextController;
  String? Function(BuildContext, String?)? pesoTextControllerValidator;
  String? _pesoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório.';
    }

    return null;
  }

  // State field(s) for altura widget.
  FocusNode? alturaFocusNode;
  TextEditingController? alturaTextController;
  String? Function(BuildContext, String?)? alturaTextControllerValidator;
  String? _alturaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório.';
    }

    return null;
  }

  // State field(s) for praticaatividade widget.
  FocusNode? praticaatividadeFocusNode;
  TextEditingController? praticaatividadeTextController;
  String? Function(BuildContext, String?)?
      praticaatividadeTextControllerValidator;
  String? _praticaatividadeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório.';
    }

    return null;
  }

  // State field(s) for rendamedia widget.
  FocusNode? rendamediaFocusNode;
  TextEditingController? rendamediaTextController;
  String? Function(BuildContext, String?)? rendamediaTextControllerValidator;
  String? _rendamediaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório.';
    }

    return null;
  }

  // State field(s) for obs widget.
  FocusNode? obsFocusNode;
  TextEditingController? obsTextController;
  String? Function(BuildContext, String?)? obsTextControllerValidator;
  String? _obsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório.';
    }

    return null;
  }

  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for navbarpaciente.
  late NavbarpacientesColabModel navbarpacienteModel;

  @override
  void initState(BuildContext context) {
    alguimtipodeprobelmaTextControllerValidator =
        _alguimtipodeprobelmaTextControllerValidator;
    pesoTextControllerValidator = _pesoTextControllerValidator;
    alturaTextControllerValidator = _alturaTextControllerValidator;
    praticaatividadeTextControllerValidator =
        _praticaatividadeTextControllerValidator;
    rendamediaTextControllerValidator = _rendamediaTextControllerValidator;
    obsTextControllerValidator = _obsTextControllerValidator;
    navbarpacienteModel =
        createModel(context, () => NavbarpacientesColabModel());
  }

  @override
  void dispose() {
    alguimtipodeprobelmaFocusNode?.dispose();
    alguimtipodeprobelmaTextController?.dispose();

    pesoFocusNode?.dispose();
    pesoTextController?.dispose();

    alturaFocusNode?.dispose();
    alturaTextController?.dispose();

    praticaatividadeFocusNode?.dispose();
    praticaatividadeTextController?.dispose();

    rendamediaFocusNode?.dispose();
    rendamediaTextController?.dispose();

    obsFocusNode?.dispose();
    obsTextController?.dispose();

    navbarpacienteModel.dispose();
  }
}
