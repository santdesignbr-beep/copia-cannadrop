import '/flutter_flow/flutter_flow_util.dart';
import 'criarfeedback_widget.dart' show CriarfeedbackWidget;
import 'package:flutter/material.dart';

class CriarfeedbackModel extends FlutterFlowModel<CriarfeedbackWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode;
  TextEditingController? shortBioTextController;
  String? Function(BuildContext, String?)? shortBioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shortBioFocusNode?.dispose();
    shortBioTextController?.dispose();
  }
}
