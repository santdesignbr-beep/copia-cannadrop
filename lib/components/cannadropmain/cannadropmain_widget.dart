import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cannadropmain_model.dart';
export 'cannadropmain_model.dart';

class CannadropmainWidget extends StatefulWidget {
  const CannadropmainWidget({super.key});

  @override
  State<CannadropmainWidget> createState() => _CannadropmainWidgetState();
}

class _CannadropmainWidgetState extends State<CannadropmainWidget> {
  late CannadropmainModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CannadropmainModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [],
    );
  }
}
