import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/navbarpacientes_colab_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'detalhesredecannadrop_widget.dart' show DetalhesredecannadropWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetalhesredecannadropModel
    extends FlutterFlowModel<DetalhesredecannadropWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for qualidadedesono widget.
  double? qualidadedesonoValue;
  // State field(s) for energia widget.
  double? energiaValue;
  // State field(s) for recuperaop widget.
  double? recuperaopValue;
  // State field(s) for digestao widget.
  double? digestaoValue;
  // State field(s) for concentracao widget.
  double? concentracaoValue;
  // State field(s) for forca widget.
  double? forcaValue;
  // State field(s) for coordencao widget.
  double? coordencaoValue;
  // State field(s) for apetite widget.
  double? apetiteValue;
  // State field(s) for ansiedade widget.
  double? ansiedadeValue;
  // State field(s) for stress widget.
  double? stressValue;
  // State field(s) for dor widget.
  double? dorValue;
  // State field(s) for Vocseconsiderasocivel widget.
  double? vocseconsiderasocivelValue;
  // Model for navbarpaciente.
  late NavbarpacientesColabModel navbarpacienteModel;

  @override
  void initState(BuildContext context) {
    navbarpacienteModel =
        createModel(context, () => NavbarpacientesColabModel());
  }

  @override
  void dispose() {
    navbarpacienteModel.dispose();
  }
}
