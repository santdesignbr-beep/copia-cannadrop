import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'photo_caption_model.dart';
export 'photo_caption_model.dart';

class PhotoCaptionWidget extends StatefulWidget {
  const PhotoCaptionWidget({
    super.key,
    this.user,
    this.post,
  });

  final String? user;
  final String? post;

  @override
  State<PhotoCaptionWidget> createState() => _PhotoCaptionWidgetState();
}

class _PhotoCaptionWidgetState extends State<PhotoCaptionWidget> {
  late PhotoCaptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PhotoCaptionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget!.user!,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.openSans(
                  fontWeight: FontWeight.w800,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: Color(0xFF333333),
                fontSize: 15.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w800,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
          child: Text(
            widget!.post!,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.openSans(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).cannadrop2D5152,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
        ),
      ],
    );
  }
}
