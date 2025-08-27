import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'maincannadrop_model.dart';
export 'maincannadrop_model.dart';

class MaincannadropWidget extends StatefulWidget {
  const MaincannadropWidget({super.key});

  @override
  State<MaincannadropWidget> createState() => _MaincannadropWidgetState();
}

class _MaincannadropWidgetState extends State<MaincannadropWidget> {
  late MaincannadropModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MaincannadropModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
