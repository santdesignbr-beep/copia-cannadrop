import '/components/likedbyy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'liked_by_widget.dart' show LikedByWidget;
import 'package:flutter/material.dart';

class LikedByModel extends FlutterFlowModel<LikedByWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for likedbyy component.
  late LikedbyyModel likedbyyModel;

  @override
  void initState(BuildContext context) {
    likedbyyModel = createModel(context, () => LikedbyyModel());
  }

  @override
  void dispose() {
    likedbyyModel.dispose();
  }
}
