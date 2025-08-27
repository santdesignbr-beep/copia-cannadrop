import '/backend/backend.dart';
import '/components/likedbyy_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'liked_by_model.dart';
export 'liked_by_model.dart';

class LikedByWidget extends StatefulWidget {
  const LikedByWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter4,
  });

  final int? parameter1;
  final List<DocumentReference>? parameter2;
  final int? parameter4;

  @override
  State<LikedByWidget> createState() => _LikedByWidgetState();
}

class _LikedByWidgetState extends State<LikedByWidget> {
  late LikedByModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LikedByModel());

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
      children: [
        StreamBuilder<UserRecord>(
          stream: UserRecord.getDocument(
              functions.returnUserFromLikes(widget!.parameter2!.toList())),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 35.0,
                  height: 35.0,
                  child: SpinKitFadingCube(
                    color: Color(0xFF789B9C),
                    size: 35.0,
                  ),
                ),
              );
            }

            final likedbyyUserRecord = snapshot.data!;

            return wrapWithModel(
              model: _model.likedbyyModel,
              updateCallback: () => safeSetState(() {}),
              child: LikedbyyWidget(
                user: likedbyyUserRecord.username,
                number: formatNumber(
                  functions.totalLikes(widget!.parameter4!),
                  formatType: FormatType.compact,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
