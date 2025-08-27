import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'post_template_widget.dart' show PostTemplateWidget;
import 'package:flutter/material.dart';

class PostTemplateModel extends FlutterFlowModel<PostTemplateWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Create Document] action in Image widget.
  NotificationsRecord? notification;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  NotificationsRecord? notification1Copy;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  CommentsRecord? comment;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  NotificationsRecord? notification1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
