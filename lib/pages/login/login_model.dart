import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

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
