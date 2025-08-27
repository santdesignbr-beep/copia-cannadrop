import '/auth/firebase_auth/auth_util.dart';
import '/components/navbarpacientes_colab_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'configperfilmedico_widget.dart' show ConfigperfilmedicoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConfigperfilmedicoModel
    extends FlutterFlowModel<ConfigperfilmedicoWidget> {
  ///  State fields for stateful widgets in this page.

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
