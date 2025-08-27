import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_cadastro_widget.dart' show LoginCadastroWidget;
import 'package:flutter/material.dart';

class LoginCadastroModel extends FlutterFlowModel<LoginCadastroWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for emailcriar widget.
  FocusNode? emailcriarFocusNode;
  TextEditingController? emailcriarTextController;
  String? Function(BuildContext, String?)? emailcriarTextControllerValidator;
  // State field(s) for senhacriar widget.
  FocusNode? senhacriarFocusNode;
  TextEditingController? senhacriarTextController;
  late bool senhacriarVisibility;
  String? Function(BuildContext, String?)? senhacriarTextControllerValidator;
  // State field(s) for passwordconfirmar widget.
  FocusNode? passwordconfirmarFocusNode;
  TextEditingController? passwordconfirmarTextController;
  late bool passwordconfirmarVisibility;
  String? Function(BuildContext, String?)?
      passwordconfirmarTextControllerValidator;
  // Stores action output result for [Backend Call - API (emailNotifications)] action in Button widget.
  ApiCallResponse? pinverificado;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhacriarVisibility = false;
    passwordconfirmarVisibility = false;
    passwordVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailcriarFocusNode?.dispose();
    emailcriarTextController?.dispose();

    senhacriarFocusNode?.dispose();
    senhacriarTextController?.dispose();

    passwordconfirmarFocusNode?.dispose();
    passwordconfirmarTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
