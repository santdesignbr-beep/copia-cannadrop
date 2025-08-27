import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/emailenviado_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'login_cadastro_widget.dart' show LoginCadastroWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
