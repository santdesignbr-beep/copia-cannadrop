import '/backend/backend.dart';
import '/components/likedbyy_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'liked_by_widget.dart' show LikedByWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
