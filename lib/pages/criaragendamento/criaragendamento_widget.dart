import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/navbarpacientes_colab_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'criaragendamento_model.dart';
export 'criaragendamento_model.dart';

class CriaragendamentoWidget extends StatefulWidget {
  const CriaragendamentoWidget({super.key});

  static String routeName = 'criaragendamento';
  static String routePath = 'criaragendamento';

  @override
  State<CriaragendamentoWidget> createState() => _CriaragendamentoWidgetState();
}

class _CriaragendamentoWidgetState extends State<CriaragendamentoWidget>
    with TickerProviderStateMixin {
  late CriaragendamentoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CriaragendamentoModel());

    _model.obsTextController ??= TextEditingController();
    _model.obsFocusNode ??= FocusNode();

    animationsMap.addAll({
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 400.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 60.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1190.0.ms,
            begin: Offset(0.0, -34.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 1190.0.ms,
            begin: Offset(0.0, -34.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF304E4F),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200.0,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 140.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: AlignmentDirectional(0.0, -1.0),
                              image: Image.asset(
                                'assets/images/banner.jpg',
                              ).image,
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/logo_cannadrop.png',
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment(0.0, 0.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (currentUserPhoto != '')
                              Align(
                                alignment: AlignmentDirectional(-1.0, 1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 0.0, 16.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Container(
                                      width: 90.0,
                                      height: 90.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Color(0xFFF40163),
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          child: CachedNetworkImage(
                                            fadeInDuration:
                                                Duration(milliseconds: 500),
                                            fadeOutDuration:
                                                Duration(milliseconds: 500),
                                            imageUrl: currentUserPhoto,
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 15.0, 0.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 10.0,
                                borderWidth: 1.0,
                                buttonSize: 30.0,
                                fillColor: Color(0xFF304E4F),
                                icon: Icon(
                                  Icons.close,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  size: 16.0,
                                ),
                                onPressed: () async {
                                  if (scaffoldKey.currentState!.isDrawerOpen ||
                                      scaffoldKey
                                          .currentState!.isEndDrawerOpen) {
                                    Navigator.pop(context);
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  if (currentUserEmailVerified)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => Text(
                          'Olá, ${valueOrDefault(currentUserDocument?.username, '')}',
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                font: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .fontStyle,
                              ),
                        ),
                      ),
                    ),
                  if (!currentUserEmailVerified)
                    AuthUserStreamWidget(
                      builder: (context) => Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (!currentUserEmailVerified)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Olá, não é associado?',
                                style: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          if (!currentUserEmailVerified)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(SaibamaisWidget.routeName);
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'clique aqui',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFFF40163),
                                            fontSize: 11.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineLarge
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'e Saiba mais',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontSize: 11.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineLarge
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 0.0, 0.0),
                    child: Text(
                      'Menu',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            font: GoogleFonts.openSans(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                  if (valueOrDefault(currentUserDocument?.permissao, '') ==
                      'paciente')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(ProfilepacienteWidget.routeName);
                          },
                          child: Container(
                            width: 180.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3.0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    0.0,
                                    1.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xFFF40163),
                                    size: 18.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Perfil',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF304E4F),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0.9, 0.0),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 18.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (valueOrDefault<bool>(
                          currentUserDocument?.colaborador, false) ==
                      true)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context
                                .pushNamed(ProfilecolaboradorWidget.routeName);
                          },
                          child: Container(
                            width: 180.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3.0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    0.0,
                                    1.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xFFF40163),
                                    size: 18.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Perfil',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            font: GoogleFonts.openSans(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontStyle,
                                            ),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0.9, 0.0),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 18.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(InicioWidget.routeName);
                      },
                      child: Container(
                        width: 180.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                1.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.cannabis,
                                color: Color(0xFFF40163),
                                size: 18.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Início',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.openSans(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF304E4F),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0.9, 0.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 18.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(FeedWidget.routeName);
                      },
                      child: Container(
                        width: 180.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                1.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.feed,
                                color: Color(0xFFF40163),
                                size: 20.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    11.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Feed',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.openSans(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF304E4F),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0.9, 0.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 18.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(DoacaoWidget.routeName);
                      },
                      child: Container(
                        width: 180.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                1.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.handHoldingHeart,
                                color: Color(0xFFF40163),
                                size: 18.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Doação',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.openSans(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF304E4F),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0.9, 0.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 18.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(ContatoWidget.routeName);
                      },
                      child: Container(
                        width: 180.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                1.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.contacts_rounded,
                                color: Color(0xFFF40163),
                                size: 22.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Contato',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.openSans(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF304E4F),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0.9, 0.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 18.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(DownloadappWidget.routeName);
                      },
                      child: Container(
                        width: 180.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                1.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.cloud_download_sharp,
                                color: Color(0xFFF40163),
                                size: 22.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Download App',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.openSans(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF304E4F),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0.9, 0.0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 18.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (!loggedIn)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(LoginCadastroWidget.routeName);
                        },
                        child: Container(
                          width: 180.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  1.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.logout_rounded,
                                  color: Color(0xFFF40163),
                                  size: 22.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Registrar-se',
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF304E4F),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.9, 0.0),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 18.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (currentUserEmailVerified)
                    AuthUserStreamWidget(
                      builder: (context) => Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 16.0, 0.0, 0.0),
                            child: Text(
                              'Configurações',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.openSans(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(NotificacaoWidget.routeName);
                              },
                              child: Container(
                                width: 180.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3.0,
                                      color: Color(0x33000000),
                                      offset: Offset(
                                        0.0,
                                        1.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.notifications_active,
                                        color: Color(0xFFF40163),
                                        size: 20.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Notificações',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF304E4F),
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.9, 0.0),
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 18.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          if (valueOrDefault(
                                  currentUserDocument?.permissao, '') ==
                              'paciente')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 5.0, 16.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                      ConfigperfilpacienteWidget.routeName);
                                },
                                child: Container(
                                  width: 180.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 3.0,
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0.0,
                                          1.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.settings,
                                          color: Color(0xFFF40163),
                                          size: 18.0,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'App Config',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  font: GoogleFonts.openSans(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF304E4F),
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.9, 0.0),
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 18.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (valueOrDefault(
                                  currentUserDocument?.permissao, '') ==
                              'colaborador')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 5.0, 16.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                      ConfigperfilcolaboradorWidget.routeName);
                                },
                                child: Container(
                                  width: 180.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 3.0,
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0.0,
                                          1.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.settings,
                                          color: Color(0xFFF40163),
                                          size: 18.0,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'App Config',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  font: GoogleFonts.openSans(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF304E4F),
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.9, 0.0),
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 18.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  GoRouter.of(context).prepareAuthEvent();
                                  await authManager.signOut();
                                  GoRouter.of(context).clearRedirectLocation();

                                  context.goNamedAuth(
                                      InicioWidget.routeName, context.mounted);
                                },
                                text: 'Log Out',
                                icon: Icon(
                                  Icons.logout,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  width: 100.0,
                                  height: 44.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.openSans(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF304E4F),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(38.0),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['buttonOnPageLoadAnimation']!),
                            ),
                          ),
                        ],
                      ),
                    ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'Desenvolvido por',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.openSans(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              fontSize: 10.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/MUTANT-_WHITE.png',
                          width: 90.0,
                          height: 40.0,
                          fit: BoxFit.contain,
                          alignment: Alignment(0.0, 0.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 100),
                                  curve: Curves.easeInOut,
                                  width: 800.0,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 95.0,
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        30.0, 5.0, 30.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, -1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 3.0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                          ),
                                                          child: Container(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  context
                                                                      .safePop();
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .chevron_left,
                                                                  color: Color(
                                                                      0xFF304E4F),
                                                                  size: 22.0,
                                                                ),
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'iconOnPageLoadAnimation1']!),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    50.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.asset(
                                                            Theme.of(context)
                                                                        .brightness ==
                                                                    Brightness
                                                                        .dark
                                                                ? 'assets/images/logo_white_rose.png'
                                                                : 'assets/images/logo_cannadrop.png',
                                                            width: 180.0,
                                                            height: 40.0,
                                                            fit:
                                                                BoxFit.fitWidth,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, -1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 3.0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                          ),
                                                          child: Container(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  scaffoldKey
                                                                      .currentState!
                                                                      .openDrawer();
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .storage_rounded,
                                                                  color: Color(
                                                                      0xFFF40163),
                                                                  size: 30.0,
                                                                ),
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'iconOnPageLoadAnimation2']!),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              width: 500.0,
                                              height: MediaQuery.sizeOf(context)
                                                          .height <=
                                                      800.0
                                                  ? 500.0
                                                  : 620.0,
                                              decoration: BoxDecoration(),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Form(
                                                  key: _model.formKey,
                                                  autovalidateMode:
                                                      AutovalidateMode.disabled,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        35.0,
                                                                        0.0,
                                                                        35.0,
                                                                        5.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .person_search_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: 18.0,
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Paciente',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.openSans(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        30.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            35.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: StreamBuilder<
                                                                        List<
                                                                            UserRecord>>(
                                                                      stream:
                                                                          queryUserRecord(),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 35.0,
                                                                              height: 35.0,
                                                                              child: SpinKitFadingCube(
                                                                                color: Color(0xFF789B9C),
                                                                                size: 35.0,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        List<UserRecord>
                                                                            pacienteUserRecordList =
                                                                            snapshot.data!;

                                                                        return FlutterFlowDropDown<
                                                                            String>(
                                                                          controller: _model.pacienteValueController ??=
                                                                              FormFieldController<String>(null),
                                                                          options: pacienteUserRecordList
                                                                              .map((e) => e.username)
                                                                              .toList(),
                                                                          onChanged: (val) =>
                                                                              safeSetState(() => _model.pacienteValue = val),
                                                                          width:
                                                                              326.0,
                                                                          height:
                                                                              38.0,
                                                                          searchHintTextStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                font: GoogleFonts.openSans(
                                                                                  fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                              ),
                                                                          searchTextStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.openSans(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.openSans(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                          hintText:
                                                                              'Selecione Paciente',
                                                                          searchHintText:
                                                                              'Buscar Paciente',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          elevation:
                                                                              2.0,
                                                                          borderColor:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          borderWidth:
                                                                              1.0,
                                                                          borderRadius:
                                                                              8.0,
                                                                          margin: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              4.0,
                                                                              16.0,
                                                                              4.0),
                                                                          hidesUnderline:
                                                                              true,
                                                                          isSearchable:
                                                                              true,
                                                                          isMultiSelect:
                                                                              false,
                                                                        );
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        35.0,
                                                                        8.0,
                                                                        35.0,
                                                                        5.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .userMd,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: 16.0,
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Colaborador',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.openSans(
                                                                              fontWeight: FontWeight.bold,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        35.0,
                                                                        0.0,
                                                                        35.0,
                                                                        8.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                  child:
                                                                      AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Container(
                                                                      width:
                                                                          45.0,
                                                                      height:
                                                                          45.0,
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child: Image
                                                                          .network(
                                                                        currentUserPhoto,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        100.0,
                                                                    height:
                                                                        50.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              FaIcon(
                                                                            FontAwesomeIcons.userNurse,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            size:
                                                                                19.0,
                                                                          ),
                                                                        ),
                                                                        AuthUserStreamWidget(
                                                                          builder: (context) =>
                                                                              Text(
                                                                            currentUserDisplayName,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.openSans(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 13.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          10.0,
                                                                          16.0,
                                                                          8.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  final _datePickedDate =
                                                                      await showDatePicker(
                                                                    context:
                                                                        context,
                                                                    initialDate:
                                                                        getCurrentTimestamp,
                                                                    firstDate:
                                                                        getCurrentTimestamp,
                                                                    lastDate:
                                                                        DateTime(
                                                                            2050),
                                                                  );

                                                                  TimeOfDay?
                                                                      _datePickedTime;
                                                                  if (_datePickedDate !=
                                                                      null) {
                                                                    _datePickedTime =
                                                                        await showTimePicker(
                                                                      context:
                                                                          context,
                                                                      initialTime:
                                                                          TimeOfDay.fromDateTime(
                                                                              getCurrentTimestamp),
                                                                    );
                                                                  }

                                                                  if (_datePickedDate !=
                                                                          null &&
                                                                      _datePickedTime !=
                                                                          null) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.datePicked =
                                                                          DateTime(
                                                                        _datePickedDate
                                                                            .year,
                                                                        _datePickedDate
                                                                            .month,
                                                                        _datePickedDate
                                                                            .day,
                                                                        _datePickedTime!
                                                                            .hour,
                                                                        _datePickedTime
                                                                            .minute,
                                                                      );
                                                                    });
                                                                  } else if (_model
                                                                          .datePicked !=
                                                                      null) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.datePicked =
                                                                          getCurrentTimestamp;
                                                                    });
                                                                  }
                                                                },
                                                                text:
                                                                    'Selecione a data e horário',
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 220.0,
                                                                  height: 45.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  iconPadding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              0.0),
                                                                  color: Color(
                                                                      0xFF2E4B4C),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .openSans(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  elevation:
                                                                      4.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              15.0),
                                                                  hoverColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  hoverElevation:
                                                                      5.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        30.0,
                                                                        10.0,
                                                                        30.0,
                                                                        10.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .date_range,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: 24.0,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    dateTimeFormat(
                                                                      "d/M/yyyy  H:mm a",
                                                                      _model
                                                                          .datePicked,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.openSans(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        30.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Observações gerais:',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .openSans(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          35.0,
                                                                          5.0,
                                                                          35.0,
                                                                          0.0),
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .obsTextController,
                                                                focusNode: _model
                                                                    .obsFocusNode,
                                                                autofocus: true,
                                                                textCapitalization:
                                                                    TextCapitalization
                                                                        .sentences,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'Digite aqui',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .openSans(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .openSans(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0xFF789B9C),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  prefixIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .library_books,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .openSans(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
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
                                                                maxLines: 3,
                                                                validator: _model
                                                                    .obsTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                                inputFormatters: [
                                                                  if (!isAndroid &&
                                                                      !isiOS)
                                                                    TextInputFormatter.withFunction(
                                                                        (oldValue,
                                                                            newValue) {
                                                                      return TextEditingValue(
                                                                        selection:
                                                                            newValue.selection,
                                                                        text: newValue
                                                                            .text
                                                                            .toCapitalization(TextCapitalization.sentences),
                                                                      );
                                                                    }),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        15.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                AuthUserStreamWidget(
                                                              builder:
                                                                  (context) =>
                                                                      Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 100.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  image:
                                                                      DecorationImage(
                                                                    fit: BoxFit
                                                                        .scaleDown,
                                                                    image: Image
                                                                        .network(
                                                                      valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.assinatura,
                                                                          ''),
                                                                    ).image,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child:
                                                                  AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Text(
                                                                  currentUserDisplayName,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .openSans(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            11.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          10.0,
                                                                          16.0,
                                                                          8.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  await AgendamentoRecord
                                                                      .collection
                                                                      .doc()
                                                                      .set({
                                                                    ...createAgendamentoRecordData(
                                                                      colaborador:
                                                                          currentUserDisplayName,
                                                                      paciente:
                                                                          _model
                                                                              .pacienteValue,
                                                                      obs: _model
                                                                          .obsTextController
                                                                          .text,
                                                                      imagecolab:
                                                                          currentUserPhoto,
                                                                      assinatura: valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.assinatura,
                                                                          ''),
                                                                      iduser:
                                                                          currentUserReference,
                                                                      createdTime:
                                                                          getCurrentTimestamp,
                                                                      atendido:
                                                                          false,
                                                                      dataHorario:
                                                                          dateTimeFormat(
                                                                        "d/M H:mm",
                                                                        _model
                                                                            .datePicked,
                                                                        locale:
                                                                            FFLocalizations.of(context).languageCode,
                                                                      ),
                                                                      usuario:
                                                                          _model
                                                                              .pacienteValue,
                                                                    ),
                                                                    ...mapToFirestore(
                                                                      {
                                                                        'permissao':
                                                                            [
                                                                          'paciente'
                                                                        ],
                                                                      },
                                                                    ),
                                                                  });

                                                                  context.pushNamed(
                                                                      ProfilecolaboradorWidget
                                                                          .routeName);
                                                                },
                                                                text: 'Criar',
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 180.0,
                                                                  height: 45.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  iconPadding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              0.0),
                                                                  color: Color(
                                                                      0xFF2E4B4C),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .openSans(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  elevation:
                                                                      4.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              15.0),
                                                                  hoverColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  hoverElevation:
                                                                      5.0,
                                                                ),
                                                              ),
                                                            ),
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: wrapWithModel(
                  model: _model.navbarpacienteModel,
                  updateCallback: () => safeSetState(() {}),
                  child: NavbarpacientesColabWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
