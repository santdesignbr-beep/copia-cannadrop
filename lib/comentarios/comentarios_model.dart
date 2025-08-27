import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/deletecomentario_widget.dart';
import '/components/photo_caption_widget.dart';
import '/components/post_options_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'comentarios_widget.dart' show ComentariosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComentariosModel extends FlutterFlowModel<ComentariosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for PhotoCaption component.
  late PhotoCaptionModel photoCaptionModel1;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  NotificationsRecord? notification;
  // State field(s) for Comment widget.
  FocusNode? commentFocusNode;
  TextEditingController? commentTextController;
  String? Function(BuildContext, String?)? commentTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Text widget.
  CommentsRecord? comment;
  // Stores action output result for [Backend Call - Create Document] action in Text widget.
  NotificationsRecord? notification1;

  @override
  void initState(BuildContext context) {
    photoCaptionModel1 = createModel(context, () => PhotoCaptionModel());
  }

  @override
  void dispose() {
    photoCaptionModel1.dispose();
    commentFocusNode?.dispose();
    commentTextController?.dispose();
  }
}
