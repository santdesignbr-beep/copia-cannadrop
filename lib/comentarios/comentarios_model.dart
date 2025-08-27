import '/backend/backend.dart';
import '/components/photo_caption_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'comentarios_widget.dart' show ComentariosWidget;
import 'package:flutter/material.dart';

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
