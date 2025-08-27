import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/photo_caption_widget.dart';
import '/components/post_options_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'post_template_model.dart';
export 'post_template_model.dart';

class PostTemplateWidget extends StatefulWidget {
  const PostTemplateWidget({
    super.key,
    this.posts,
  });

  final PostsRecord? posts;

  @override
  State<PostTemplateWidget> createState() => _PostTemplateWidgetState();
}

class _PostTemplateWidgetState extends State<PostTemplateWidget>
    with TickerProviderStateMixin {
  late PostTemplateModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostTemplateModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.2, 0.2),
            end: Offset(1.0, 1.0),
          ),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 1000.0.ms,
            duration: 150.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.2, 0.2),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsets.all(4.0),
      child: StreamBuilder<UserRecord>(
        stream: UserRecord.getDocument(widget!.posts!.postUser!),
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

          final columnUserRecord = snapshot.data!;

          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 4.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: FlutterFlowExpandedImageView(
                                image: Image.network(
                                  columnUserRecord.photoUrl,
                                  fit: BoxFit.contain,
                                ),
                                allowRotation: false,
                                tag: columnUserRecord.photoUrl,
                                useHeroAnimation: true,
                              ),
                            ),
                          );
                        },
                        child: Hero(
                          tag: columnUserRecord.photoUrl,
                          transitionOnUserGestures: true,
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              columnUserRecord.photoUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 0.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              columnUserRecord.username,
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .cannadrop2D5152,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .fontStyle,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 4.0, 12.0),
                        child: Text(
                          widget!.posts!.legenda,
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .cannadrop2D5152,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 350.0,
                        child: Stack(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onDoubleTap: () async {
                                  if (widget!.posts!.allowLikes) {
                                    if (widget!.posts!.likes
                                        .contains(currentUserReference)) {
                                      await widget!.posts!.reference.update({
                                        ...mapToFirestore(
                                          {
                                            'likes': FieldValue.arrayRemove(
                                                [columnUserRecord.reference]),
                                          },
                                        ),
                                      });
                                    } else {
                                      if (animationsMap[
                                              'iconOnActionTriggerAnimation'] !=
                                          null) {
                                        animationsMap[
                                                'iconOnActionTriggerAnimation']!
                                            .controller
                                            .forward(from: 0.0);
                                      }

                                      await widget!.posts!.reference.update({
                                        ...mapToFirestore(
                                          {
                                            'likes': FieldValue.arrayUnion(
                                                [currentUserReference]),
                                          },
                                        ),
                                      });
                                      HapticFeedback.lightImpact();
                                      if (widget!.posts?.postUser !=
                                          currentUserReference) {
                                        var notificationsRecordReference =
                                            NotificationsRecord.createDoc(
                                                columnUserRecord.reference);
                                        await notificationsRecordReference
                                            .set(createNotificationsRecordData(
                                          notificationType: 'Post_Like',
                                          userRef: currentUserReference,
                                          postRef: widget!.posts?.reference,
                                          timeCreated: getCurrentTimestamp,
                                        ));
                                        _model.notification = NotificationsRecord
                                            .getDocumentFromData(
                                                createNotificationsRecordData(
                                                  notificationType: 'Post_Like',
                                                  userRef: currentUserReference,
                                                  postRef:
                                                      widget!.posts?.reference,
                                                  timeCreated:
                                                      getCurrentTimestamp,
                                                ),
                                                notificationsRecordReference);

                                        await columnUserRecord.reference
                                            .update({
                                          ...mapToFirestore(
                                            {
                                              'unreadNotifications':
                                                  FieldValue.arrayUnion([
                                                _model.notification?.reference
                                              ]),
                                            },
                                          ),
                                        });
                                      }
                                    }
                                  }

                                  safeSetState(() {});
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(30.0),
                                    topRight: Radius.circular(30.0),
                                  ),
                                  child: Image.network(
                                    widget!.posts!.postPhoto,
                                    width: double.infinity,
                                    height: 350.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: FaIcon(
                                FontAwesomeIcons.cannabis,
                                color: Colors.white,
                                size: 120.0,
                              ).animateOnActionTrigger(
                                animationsMap['iconOnActionTriggerAnimation']!,
                              ),
                            ),
                            if (widget!.posts?.callToActionEnabled ?? true)
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchURL(
                                        widget!.posts!.callToActionLink);
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF000000),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 15.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              widget!.posts!.callToActionText,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.openSans(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: Colors.white,
                                                    fontSize: 15.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                            Icon(
                                              Icons.arrow_right,
                                              color: Colors.white,
                                              size: 24.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 8.0, 4.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 12.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (currentUserDisplayName != '') {
                                    context.pushNamed(
                                      ComentariosWidget.routeName,
                                      queryParameters: {
                                        'post': serializeParam(
                                          widget!.posts?.reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );

                                    return;
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Você não é associado.'),
                                          content: Text(
                                              'Faça seu cadastro e associa-se já!'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                    return;
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 8.0, 0.0, 8.0),
                                      child: Icon(
                                        Icons.mode_comment_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .cannadrop2D5152,
                                        size: 24.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: Text(
                                        formatNumber(
                                          widget!.posts!.numComments,
                                          formatType: FormatType.compact,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 12.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (currentUserDisplayName != '') {
                                    context.pushNamed(
                                      ComentariosWidget.routeName,
                                      queryParameters: {
                                        'post': serializeParam(
                                          widget!.posts?.reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );

                                    return;
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Você não é associado.'),
                                          content: Text(
                                              'Faça seu cadastro e associa-se já!'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                    return;
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Stack(
                                      children: [
                                        if (widget!.posts?.likes?.contains(
                                                currentUserReference) ??
                                            true)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 8.0, 0.0, 8.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await widget!.posts!.reference
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'likes': FieldValue
                                                          .arrayRemove([
                                                        columnUserRecord
                                                            .reference
                                                      ]),
                                                    },
                                                  ),
                                                });
                                              },
                                              child: Icon(
                                                Icons
                                                    .local_fire_department_sharp,
                                                color: Color(0xFF003D02),
                                                size: 24.0,
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'iconOnPageLoadAnimation']!),
                                          ),
                                        if (!widget!.posts!.likes
                                            .contains(currentUserReference))
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 8.0, 0.0, 8.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (animationsMap[
                                                          'iconOnActionTriggerAnimation'] !=
                                                      null) {
                                                    animationsMap[
                                                            'iconOnActionTriggerAnimation']!
                                                        .controller
                                                        .forward(from: 0.0);
                                                  }

                                                  await widget!.posts!.reference
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'likes': FieldValue
                                                            .arrayUnion([
                                                          currentUserReference
                                                        ]),
                                                      },
                                                    ),
                                                  });
                                                  HapticFeedback.lightImpact();
                                                  if (widget!.posts?.postUser !=
                                                      currentUserReference) {
                                                    var notificationsRecordReference =
                                                        NotificationsRecord
                                                            .createDoc(
                                                                columnUserRecord
                                                                    .reference);
                                                    await notificationsRecordReference
                                                        .set(
                                                            createNotificationsRecordData(
                                                      notificationType:
                                                          'Post_Like',
                                                      userRef:
                                                          currentUserReference,
                                                      postRef: widget!
                                                          .posts?.reference,
                                                      timeCreated:
                                                          getCurrentTimestamp,
                                                    ));
                                                    _model.notification1Copy =
                                                        NotificationsRecord
                                                            .getDocumentFromData(
                                                                createNotificationsRecordData(
                                                                  notificationType:
                                                                      'Post_Like',
                                                                  userRef:
                                                                      currentUserReference,
                                                                  postRef: widget!
                                                                      .posts
                                                                      ?.reference,
                                                                  timeCreated:
                                                                      getCurrentTimestamp,
                                                                ),
                                                                notificationsRecordReference);
                                                  }

                                                  safeSetState(() {});
                                                },
                                                child: Icon(
                                                  Icons
                                                      .local_fire_department_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .cannadrop2D5152,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: Text(
                                        formatNumber(
                                          widget!.posts!.numComments,
                                          formatType: FormatType.compact,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 12.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: PostOptionsWidget(),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.ios_share,
                                        color: FlutterFlowTheme.of(context)
                                            .cannadrop2D5152,
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (currentUserDisplayName != '')
                        AuthUserStreamWidget(
                          builder: (context) => Container(
                            width: double.infinity,
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 8.0, 15.0, 0.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if ((widget!.posts?.numComments != 0) &&
                                        widget!.posts!.allowComments)
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (widget!.posts!.numComments > 1)
                                            StreamBuilder<List<CommentsRecord>>(
                                              stream: queryCommentsRecord(
                                                parent:
                                                    widget!.posts?.reference,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 35.0,
                                                      height: 35.0,
                                                      child: SpinKitFadingCube(
                                                        color:
                                                            Color(0xFF789B9C),
                                                        size: 35.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<CommentsRecord>
                                                    textCommentsRecordList =
                                                    snapshot.data!;

                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                      ComentariosWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'post': serializeParam(
                                                          widget!
                                                              .posts?.reference,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: Text(
                                                    'Ver todos ${formatNumber(
                                                      textCommentsRecordList
                                                          .length,
                                                      formatType:
                                                          FormatType.compact,
                                                    )} comentários',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .openSans(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .cannadrop2D5152,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                );
                                              },
                                            ),
                                        ],
                                      ),
                                    Container(
                                      width: double.infinity,
                                      height: 80.0,
                                      decoration: BoxDecoration(),
                                      child:
                                          StreamBuilder<List<CommentsRecord>>(
                                        stream: queryCommentsRecord(
                                          parent: widget!.posts?.reference,
                                          queryBuilder: (commentsRecord) =>
                                              commentsRecord.orderBy(
                                                  'time_posted',
                                                  descending: true),
                                          limit: 3,
                                        ),
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
                                          List<CommentsRecord>
                                              columnCommentsRecordList =
                                              snapshot.data!;

                                          return Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: List.generate(
                                                columnCommentsRecordList.length,
                                                (columnIndex) {
                                              final columnCommentsRecord =
                                                  columnCommentsRecordList[
                                                      columnIndex];
                                              return Expanded(
                                                child:
                                                    FutureBuilder<UserRecord>(
                                                  future: UserRecord
                                                      .getDocumentOnce(
                                                          columnCommentsRecord
                                                              .postUser!),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 35.0,
                                                          height: 35.0,
                                                          child:
                                                              SpinKitFadingCube(
                                                            color: Color(
                                                                0xFF789B9C),
                                                            size: 35.0,
                                                          ),
                                                        ),
                                                      );
                                                    }

                                                    final photoCaptionUserRecord =
                                                        snapshot.data!;

                                                    return PhotoCaptionWidget(
                                                      key: Key(
                                                          'Keypx4_${columnIndex}_of_${columnCommentsRecordList.length}'),
                                                      user:
                                                          photoCaptionUserRecord
                                                              .username,
                                                      post: columnCommentsRecord
                                                          .comment,
                                                    );
                                                  },
                                                ),
                                              );
                                            }),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child:
                                          StreamBuilder<List<CommentsRecord>>(
                                        stream: queryCommentsRecord(
                                          singleRecord: true,
                                        ),
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
                                          List<CommentsRecord>
                                              rowCommentsRecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final rowCommentsRecord =
                                              rowCommentsRecordList.isNotEmpty
                                                  ? rowCommentsRecordList.first
                                                  : null;

                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 25.0,
                                                    height: 25.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.network(
                                                          valueOrDefault<
                                                              String>(
                                                            currentUserPhoto,
                                                            'https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg',
                                                          ),
                                                        ).image,
                                                      ),
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: TextFormField(
                                                    controller:
                                                        _model.textController,
                                                    focusNode: _model
                                                        .textFieldFocusNode,
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .openSans(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                      hintText:
                                                          'Escrever comentário',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .openSans(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                      focusedErrorBorder:
                                                          InputBorder.none,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .openSans(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .cannadrop2D5152,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                    maxLines: 3,
                                                    minLines: 1,
                                                    validator: _model
                                                        .textControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                15.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        var _shouldSetState =
                                                            false;
                                                        if (_model
                                                                .textController
                                                                .text ==
                                                            '') {
                                                          if (_shouldSetState)
                                                            safeSetState(() {});
                                                          return;
                                                        }

                                                        var commentsRecordReference =
                                                            CommentsRecord
                                                                .createDoc(widget!
                                                                    .posts!
                                                                    .reference);
                                                        await commentsRecordReference
                                                            .set({
                                                          ...createCommentsRecordData(
                                                            timePosted:
                                                                getCurrentTimestamp,
                                                            comment: _model
                                                                .textController
                                                                .text,
                                                            postUser:
                                                                currentUserReference,
                                                          ),
                                                          ...mapToFirestore(
                                                            {
                                                              'likes':
                                                                  FFAppState()
                                                                      .emptyList,
                                                            },
                                                          ),
                                                        });
                                                        _model.comment =
                                                            CommentsRecord
                                                                .getDocumentFromData({
                                                          ...createCommentsRecordData(
                                                            timePosted:
                                                                getCurrentTimestamp,
                                                            comment: _model
                                                                .textController
                                                                .text,
                                                            postUser:
                                                                currentUserReference,
                                                          ),
                                                          ...mapToFirestore(
                                                            {
                                                              'likes':
                                                                  FFAppState()
                                                                      .emptyList,
                                                            },
                                                          ),
                                                        }, commentsRecordReference);
                                                        _shouldSetState = true;

                                                        await widget!
                                                            .posts!.reference
                                                            .update({
                                                          ...mapToFirestore(
                                                            {
                                                              'num_comments':
                                                                  FieldValue
                                                                      .increment(
                                                                          1),
                                                            },
                                                          ),
                                                        });
                                                        safeSetState(() {
                                                          _model.textController
                                                              ?.clear();
                                                        });
                                                        if (widget!.posts
                                                                ?.postUser !=
                                                            currentUserReference) {
                                                          var notificationsRecordReference =
                                                              NotificationsRecord
                                                                  .createDoc(
                                                                      columnUserRecord
                                                                          .reference);
                                                          await notificationsRecordReference
                                                              .set(
                                                                  createNotificationsRecordData(
                                                            notificationType:
                                                                'Post_Comment',
                                                            userRef:
                                                                currentUserReference,
                                                            postRef: widget!
                                                                .posts
                                                                ?.reference,
                                                            timeCreated:
                                                                getCurrentTimestamp,
                                                            commentRef:
                                                                rowCommentsRecord
                                                                    ?.reference,
                                                          ));
                                                          _model.notification1 =
                                                              NotificationsRecord
                                                                  .getDocumentFromData(
                                                                      createNotificationsRecordData(
                                                                        notificationType:
                                                                            'Post_Comment',
                                                                        userRef:
                                                                            currentUserReference,
                                                                        postRef: widget!
                                                                            .posts
                                                                            ?.reference,
                                                                        timeCreated:
                                                                            getCurrentTimestamp,
                                                                        commentRef:
                                                                            rowCommentsRecord?.reference,
                                                                      ),
                                                                      notificationsRecordReference);
                                                          _shouldSetState =
                                                              true;
                                                        }
                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons.send,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .cannadrop2D5152,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                8.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        safeSetState(() {
                                                          _model.textController
                                                              ?.text = '🎉';
                                                        });
                                                      },
                                                      child: Text(
                                                        '🎉',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .openSans(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                8.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        safeSetState(() {
                                                          _model.textController
                                                              ?.text = '🤩';
                                                        });
                                                      },
                                                      child: Text(
                                                        '🤩',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .openSans(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      safeSetState(() {
                                                        _model.textController
                                                            ?.text = '🥰';
                                                      });
                                                    },
                                                    child: Text(
                                                      '🥰',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .openSans(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Text(
                                        dateTimeFormat(
                                          "relative",
                                          widget!.posts!.timePosted!,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .cannadrop2D5152,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
