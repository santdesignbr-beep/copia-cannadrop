import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/deleteuser_widget.dart';
import '/components/navbarpacientes_colab_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'configperfilpaciente_widget.dart' show ConfigperfilpacienteWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConfigperfilpacienteModel
    extends FlutterFlowModel<ConfigperfilpacienteWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_imageconfigpaciente = false;
  FFUploadedFile uploadedLocalFile_imageconfigpaciente =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_imageconfigpaciente = '';

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
