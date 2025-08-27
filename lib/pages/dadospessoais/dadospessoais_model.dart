import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dadospessoais_widget.dart' show DadospessoaisWidget;
import 'package:flutter/material.dart';

class DadospessoaisModel extends FlutterFlowModel<DadospessoaisWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
