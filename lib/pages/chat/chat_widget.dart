import '/flutter_flow/chat/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chat_model.dart';
export 'chat_model.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({
    super.key,
    this.chatUser,
    this.chatRef,
  });

  final UserRecord? chatUser;
  final DocumentReference? chatRef;

  static String routeName = 'Chat';
  static String routePath = 'chat';

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  late ChatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  FFChatInfo? _chatInfo;
  bool isGroupChat() {
    if (widget.chatUser == null) {
      return true;
    }
    if (widget.chatRef == null) {
      return false;
    }
    return _chatInfo?.isGroupChat ?? false;
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatModel());

    FFChatManager.instance
        .getChatInfo(
      otherUserRecord: widget.chatUser,
      chatReference: widget.chatRef,
    )
        .listen((info) {
      safeSetState(() => _chatInfo = info);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: NestedScrollView(
        floatHeaderSlivers: false,
        headerSliverBuilder: (context, _) => [
          SliverAppBar(
            pinned: false,
            floating: false,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Color(0xFF325254)),
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 46.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Color(0xFF304E4F),
                size: 24.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            title: Text(
              valueOrDefault<String>(
                widget.chatUser?.displayName,
                'Nome',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.openSans(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: Color(0xFF3C6162),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            actions: [
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        widget.chatUser!.photoUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            centerTitle: false,
            elevation: 2.0,
          )
        ],
        body: Builder(
          builder: (context) {
            return StreamBuilder<FFChatInfo>(
              stream: FFChatManager.instance.getChatInfo(
                otherUserRecord: widget.chatUser,
                chatReference: widget.chatRef,
              ),
              builder: (context, snapshot) => snapshot.hasData
                  ? FFChatPage(
                      chatInfo: snapshot.data!,
                      allowImages: true,
                      backgroundColor: Colors.white,
                      timeDisplaySetting: TimeDisplaySetting.visibleOnTap,
                      currentUserBoxDecoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).searchColor,
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      otherUsersBoxDecoration: BoxDecoration(
                        color: Color(0xFF325254),
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      currentUserTextStyle: GoogleFonts.dmSans(
                        color: Color(0xFF1E2429),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                        fontStyle: FontStyle.normal,
                      ),
                      otherUsersTextStyle: GoogleFonts.dmSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                      inputHintTextStyle: GoogleFonts.dmSans(
                        color: Color(0xFF95A1AC),
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0,
                      ),
                      inputTextStyle: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0,
                      ),
                      emptyChatWidget: Image.asset(
                        'assets/images/sem_mensagem.png',
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        fit: BoxFit.contain,
                      ),
                    )
                  : Center(
                      child: SizedBox(
                        width: 35.0,
                        height: 35.0,
                        child: SpinKitFadingCube(
                          color: Color(0xFF789B9C),
                          size: 35.0,
                        ),
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }
}
