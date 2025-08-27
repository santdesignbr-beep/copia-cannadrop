import '/auth/firebase_auth/auth_util.dart';
import '/components/emailenviado_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;
  int get tabBarPreviousIndex1 =>
      tabBarController1 != null ? tabBarController1!.previousIndex : 0;

  // State field(s) for tf-emaillg widget.
  FocusNode? tfEmaillgFocusNode;
  TextEditingController? tfEmaillgTextController;
  String? Function(BuildContext, String?)? tfEmaillgTextControllerValidator;
  // State field(s) for tf_passlg widget.
  FocusNode? tfPasslgFocusNode;
  TextEditingController? tfPasslgTextController;
  late bool tfPasslgVisibility;
  String? Function(BuildContext, String?)? tfPasslgTextControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;
  int get tabBarPreviousIndex2 =>
      tabBarController2 != null ? tabBarController2!.previousIndex : 0;

  // State field(s) for tf-emaillgmobile widget.
  FocusNode? tfEmaillgmobileFocusNode;
  TextEditingController? tfEmaillgmobileTextController;
  String? Function(BuildContext, String?)?
      tfEmaillgmobileTextControllerValidator;
  // State field(s) for tf_passlgmobile widget.
  FocusNode? tfPasslgmobileFocusNode;
  TextEditingController? tfPasslgmobileTextController;
  late bool tfPasslgmobileVisibility;
  String? Function(BuildContext, String?)?
      tfPasslgmobileTextControllerValidator;

  @override
  void initState(BuildContext context) {
    tfPasslgVisibility = false;
    tfPasslgmobileVisibility = false;
  }

  @override
  void dispose() {
    tabBarController1?.dispose();
    tfEmaillgFocusNode?.dispose();
    tfEmaillgTextController?.dispose();

    tfPasslgFocusNode?.dispose();
    tfPasslgTextController?.dispose();

    tabBarController2?.dispose();
    tfEmaillgmobileFocusNode?.dispose();
    tfEmaillgmobileTextController?.dispose();

    tfPasslgmobileFocusNode?.dispose();
    tfPasslgmobileTextController?.dispose();
  }
}
