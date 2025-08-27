import '/components/navbarpaciente_widget.dart';
import '/flutter_flow/chat/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'all_chats_model.dart';
export 'all_chats_model.dart';

class AllChatsWidget extends StatefulWidget {
  const AllChatsWidget({super.key});

  static String routeName = 'AllChats';
  static String routePath = 'allChats';

  @override
  State<AllChatsWidget> createState() => _AllChatsWidgetState();
}

class _AllChatsWidgetState extends State<AllChatsWidget> {
  late AllChatsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllChatsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        body: NestedScrollView(
          floatHeaderSlivers: false,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              expandedHeight: 100.0,
              pinned: false,
              floating: false,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              leading: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(ProfilepacienteWidget.routeName);
                  },
                  child: Icon(
                    Icons.chevron_left,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                ),
              ),
              title: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.02, 0.63),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/logo.png',
                            width: 150.0,
                            height: 50.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Conversas',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Colors.black,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ],
              ),
              actions: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 5.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(BuscarUserWidget.routeName);
                    },
                    child: Icon(
                      Icons.person_add,
                      color: Color(0xFF325254),
                      size: 28.0,
                    ),
                  ),
                ),
              ],
              centerTitle: true,
              toolbarHeight: 100.0,
              elevation: 4.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: 800.0,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            30.0, 2.0, 30.0, 0.0),
                        child: StreamBuilder<List<ChatsRecord>>(
                          stream: queryChatsRecord(
                            queryBuilder: (chatsRecord) => chatsRecord
                                .where(
                                  'users',
                                  arrayContains: currentUserReference,
                                )
                                .orderBy('last_message_time', descending: true),
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
                            List<ChatsRecord> listViewChatsRecordList =
                                snapshot.data!;
                            if (listViewChatsRecordList.isEmpty) {
                              return Center(
                                child: Image.asset(
                                  'assets/images/sem_conversa_feliz.jpg',
                                  fit: BoxFit.cover,
                                ),
                              );
                            }

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewChatsRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewChatsRecord =
                                    listViewChatsRecordList[listViewIndex];
                                return StreamBuilder<FFChatInfo>(
                                  stream: FFChatManager.instance.getChatInfo(
                                      chatRecord: listViewChatsRecord),
                                  builder: (context, snapshot) {
                                    final chatInfo = snapshot.data ??
                                        FFChatInfo(listViewChatsRecord);
                                    return FFChatPreview(
                                      onTap: () => context.pushNamed(
                                        ChatWidget.routeName,
                                        queryParameters: {
                                          'chatUser': serializeParam(
                                            chatInfo.otherUsers.length == 1
                                                ? chatInfo.otherUsersList.first
                                                : null,
                                            ParamType.Document,
                                          ),
                                          'chatRef': serializeParam(
                                            chatInfo.chatRecord.reference,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          'chatUser':
                                              chatInfo.otherUsers.length == 1
                                                  ? chatInfo
                                                      .otherUsersList.first
                                                  : null,
                                        },
                                      ),
                                      lastChatText:
                                          chatInfo.chatPreviewMessage(),
                                      lastChatTime:
                                          listViewChatsRecord.lastMessageTime,
                                      seen: listViewChatsRecord
                                          .lastMessageSeenBy
                                          .contains(currentUserReference),
                                      title: chatInfo.chatPreviewTitle(),
                                      userProfilePic: chatInfo.chatPreviewPic(),
                                      color: Color(0x00000000),
                                      unreadColor: Color(0xFF325254),
                                      titleTextStyle: GoogleFonts.dmSans(
                                        color: Color(0xFF325254),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14.0,
                                      ),
                                      dateTextStyle: GoogleFonts.dmSans(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14.0,
                                      ),
                                      previewTextStyle: GoogleFonts.dmSans(
                                        color: Color(0x73000000),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14.0,
                                      ),
                                      contentPadding: EdgeInsets.all(3.0),
                                      borderRadius: BorderRadius.circular(0.0),
                                    );
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: wrapWithModel(
                          model: _model.navbarpacienteModel,
                          updateCallback: () => safeSetState(() {}),
                          child: NavbarpacienteWidget(),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
