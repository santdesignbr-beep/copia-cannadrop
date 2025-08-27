import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'cadastrocolaborador_widget.dart' show CadastrocolaboradorWidget;
import 'package:flutter/material.dart';

class CadastrocolaboradorModel
    extends FlutterFlowModel<CadastrocolaboradorWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for nomecolaborador widget.
  FocusNode? nomecolaboradorFocusNode;
  TextEditingController? nomecolaboradorTextController;
  String? Function(BuildContext, String?)?
      nomecolaboradorTextControllerValidator;
  String? _nomecolaboradorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório.';
    }

    return null;
  }

  // State field(s) for Dropregiaocolaborador widget.
  String? dropregiaocolaboradorValue;
  FormFieldController<String>? dropregiaocolaboradorValueController;
  // State field(s) for codigocolabordaor widget.
  FocusNode? codigocolabordaorFocusNode;
  TextEditingController? codigocolabordaorTextController;
  String? Function(BuildContext, String?)?
      codigocolabordaorTextControllerValidator;
  String? _codigocolabordaorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório.';
    }

    return null;
  }

  // State field(s) for departamentocolaborador widget.
  String? departamentocolaboradorValue;
  FormFieldController<String>? departamentocolaboradorValueController;

  @override
  void initState(BuildContext context) {
    nomecolaboradorTextControllerValidator =
        _nomecolaboradorTextControllerValidator;
    codigocolabordaorTextControllerValidator =
        _codigocolabordaorTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    nomecolaboradorFocusNode?.dispose();
    nomecolaboradorTextController?.dispose();

    codigocolabordaorFocusNode?.dispose();
    codigocolabordaorTextController?.dispose();
  }
}
