import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tags_labels_model.dart';
export 'tags_labels_model.dart';

class TagsLabelsWidget extends StatefulWidget {
  const TagsLabelsWidget({super.key});

  @override
  State<TagsLabelsWidget> createState() => _TagsLabelsWidgetState();
}

class _TagsLabelsWidgetState extends State<TagsLabelsWidget> {
  late TagsLabelsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TagsLabelsModel());

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
