import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sign_up_username_widget.dart' show SignUpUsernameWidget;
import 'package:flutter/material.dart';

class SignUpUsernameModel extends FlutterFlowModel<SignUpUsernameWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();
  }
}
