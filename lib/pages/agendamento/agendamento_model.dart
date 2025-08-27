import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'agendamento_widget.dart' show AgendamentoWidget;
import 'package:flutter/material.dart';

class AgendamentoModel extends FlutterFlowModel<AgendamentoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for Dropregiao widget.
  String? dropregiaoValue;
  FormFieldController<String>? dropregiaoValueController;
  // State field(s) for Drophorario widget.
  String? drophorarioValue;
  FormFieldController<String>? drophorarioValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
