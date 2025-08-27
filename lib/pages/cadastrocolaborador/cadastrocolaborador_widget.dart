import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'cadastrocolaborador_model.dart';
export 'cadastrocolaborador_model.dart';

class CadastrocolaboradorWidget extends StatefulWidget {
  const CadastrocolaboradorWidget({super.key});

  static String routeName = 'cadastrocolaborador';
  static String routePath = 'cadastrocolaborador';

  @override
  State<CadastrocolaboradorWidget> createState() =>
      _CadastrocolaboradorWidgetState();
}

class _CadastrocolaboradorWidgetState extends State<CadastrocolaboradorWidget>
    with TickerProviderStateMixin {
  late CadastrocolaboradorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CadastrocolaboradorModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 1,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    _model.nomecolaboradorTextController ??=
        TextEditingController(text: currentUserDisplayName);
    _model.nomecolaboradorFocusNode ??= FocusNode();

    _model.codigocolabordaorTextController ??= TextEditingController();
    _model.codigocolabordaorFocusNode ??= FocusNode();

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
        backgroundColor: FlutterFlowTheme.of(context).primary,
        body: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            width: 800.0,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      child: Container(
                        width: 1024.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 800.0,
                                height: 851.0,
                                decoration: BoxDecoration(),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 200.0,
                                        child: Stack(
                                          children: [
                                            ClipRect(
                                              child: ImageFiltered(
                                                imageFilter: ImageFilter.blur(
                                                  sigmaX: 2.0,
                                                  sigmaY: 2.0,
                                                ),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 370.0,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        'assets/images/banner.jpg',
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(40.0),
                                                      bottomRight:
                                                          Radius.circular(40.0),
                                                      topLeft:
                                                          Radius.circular(0.0),
                                                      topRight:
                                                          Radius.circular(0.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 370.0,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Color(0xFF2E4B4C),
                                                    Color(0x001E2429)
                                                  ],
                                                  stops: [0.0, 1.0],
                                                  begin: AlignmentDirectional(
                                                      0.0, 1.0),
                                                  end: AlignmentDirectional(
                                                      0, -1.0),
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(30.0),
                                                  bottomRight:
                                                      Radius.circular(30.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 70.0,
                                                                0.0, 0.0),
                                                    child: Image.asset(
                                                      'assets/images/logo_white_rose.png',
                                                      width: 230.0,
                                                      height: 90.0,
                                                      fit: BoxFit.fitWidth,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 24.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                'O acesso deve ser para todos!',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .lexendDeca(
                                                                        fontWeight:
                                                                            FontWeight.w100,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .headlineMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w100,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineMedium
                                                                          .fontStyle,
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
                                      AnimatedContainer(
                                        duration: Duration(milliseconds: 100),
                                        curve: Curves.easeInOut,
                                        width: 800.0,
                                        height: 623.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Container(
                                          width: 100.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Wrap(
                                                  spacing: 0.0,
                                                  runSpacing: 0.0,
                                                  alignment:
                                                      WrapAlignment.start,
                                                  crossAxisAlignment:
                                                      WrapCrossAlignment.start,
                                                  direction: Axis.horizontal,
                                                  runAlignment:
                                                      WrapAlignment.start,
                                                  verticalDirection:
                                                      VerticalDirection.down,
                                                  clipBehavior: Clip.none,
                                                  children: [
                                                    Transform.rotate(
                                                      angle:
                                                          0.0 * (math.pi / 180),
                                                      child: MouseRegion(
                                                        opaque: false,
                                                        cursor: MouseCursor
                                                                .defer ??
                                                            MouseCursor.defer,
                                                        child: Stack(
                                                          children: [
                                                            Container(
                                                              width: 800.0,
                                                              height: 600.0,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        30.0,
                                                                        0.0,
                                                                        30.0,
                                                                        0.0),
                                                                child: Column(
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          Alignment(
                                                                              0.0,
                                                                              0),
                                                                      child:
                                                                          TabBar(
                                                                        labelColor:
                                                                            FlutterFlowTheme.of(context).primaryText,
                                                                        unselectedLabelColor:
                                                                            FlutterFlowTheme.of(context).secondaryText,
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .titleMedium
                                                                            .override(
                                                                              font: GoogleFonts.openSans(
                                                                                fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                              ),
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                            ),
                                                                        unselectedLabelStyle:
                                                                            TextStyle(),
                                                                        indicatorColor:
                                                                            Color(0xFF2E4B4C),
                                                                        padding:
                                                                            EdgeInsets.all(4.0),
                                                                        tabs: [
                                                                          Tab(
                                                                            text:
                                                                                'Colaborador',
                                                                            icon:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.userNurse,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                        controller:
                                                                            _model.tabBarController,
                                                                        onTap:
                                                                            (i) async {
                                                                          [
                                                                            () async {}
                                                                          ][i]();
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          TabBarView(
                                                                        controller:
                                                                            _model.tabBarController,
                                                                        children: [
                                                                          Form(
                                                                            key:
                                                                                _model.formKey,
                                                                            autovalidateMode:
                                                                                AutovalidateMode.disabled,
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                  child: AuthUserStreamWidget(
                                                                                    builder: (context) => Container(
                                                                                      width: 90.0,
                                                                                      height: 90.0,
                                                                                      clipBehavior: Clip.antiAlias,
                                                                                      decoration: BoxDecoration(
                                                                                        shape: BoxShape.circle,
                                                                                      ),
                                                                                      child: Image.network(
                                                                                        valueOrDefault<String>(
                                                                                          currentUserPhoto,
                                                                                          'https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg',
                                                                                        ),
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: 500.0,
                                                                                  height: 450.0,
                                                                                  decoration: BoxDecoration(),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsets.all(10.0),
                                                                                    child: SingleChildScrollView(
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                            child: AuthUserStreamWidget(
                                                                                              builder: (context) => TextFormField(
                                                                                                controller: _model.nomecolaboradorTextController,
                                                                                                focusNode: _model.nomecolaboradorFocusNode,
                                                                                                autofocus: true,
                                                                                                obscureText: false,
                                                                                                decoration: InputDecoration(
                                                                                                  labelText: 'Nome Completo',
                                                                                                  labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.lexendDeca(
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontSize: 14.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                  hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.lexendDeca(
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: Color(0xFF57636C),
                                                                                                        fontSize: 14.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                  enabledBorder: OutlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0xFFDBE2E7),
                                                                                                      width: 2.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                  ),
                                                                                                  focusedBorder: OutlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0x00000000),
                                                                                                      width: 2.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                  ),
                                                                                                  errorBorder: OutlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0x00000000),
                                                                                                      width: 2.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                  ),
                                                                                                  focusedErrorBorder: OutlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0x00000000),
                                                                                                      width: 2.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                  ),
                                                                                                  contentPadding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 20.0, 24.0),
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.lexendDeca(
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      fontSize: 14.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                                maxLines: null,
                                                                                                keyboardType: TextInputType.name,
                                                                                                validator: _model.nomecolaboradorTextControllerValidator.asValidator(context),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 8.0),
                                                                                            child: StreamBuilder<List<RegiaoRecord>>(
                                                                                              stream: queryRegiaoRecord(),
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
                                                                                                List<RegiaoRecord> dropregiaocolaboradorRegiaoRecordList = snapshot.data!;

                                                                                                return FlutterFlowDropDown<String>(
                                                                                                  controller: _model.dropregiaocolaboradorValueController ??= FormFieldController<String>(null),
                                                                                                  options: dropregiaocolaboradorRegiaoRecordList.map((e) => e.nome).toList(),
                                                                                                  onChanged: (val) => safeSetState(() => _model.dropregiaocolaboradorValue = val),
                                                                                                  width: 300.0,
                                                                                                  height: 50.0,
                                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.openSans(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                  hintText: 'Selecione sua Região',
                                                                                                  icon: Icon(
                                                                                                    Icons.keyboard_arrow_down_rounded,
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    size: 24.0,
                                                                                                  ),
                                                                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  elevation: 2.0,
                                                                                                  borderColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                  borderWidth: 2.0,
                                                                                                  borderRadius: 8.0,
                                                                                                  margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                                  hidesUnderline: true,
                                                                                                  isSearchable: false,
                                                                                                  isMultiSelect: false,
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 8.0),
                                                                                            child: Container(
                                                                                              width: double.infinity,
                                                                                              child: TextFormField(
                                                                                                controller: _model.codigocolabordaorTextController,
                                                                                                focusNode: _model.codigocolabordaorFocusNode,
                                                                                                autofocus: true,
                                                                                                obscureText: false,
                                                                                                decoration: InputDecoration(
                                                                                                  labelText: 'Código de Acesso',
                                                                                                  labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.lexendDeca(
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: Color(0xFF57636C),
                                                                                                        fontSize: 14.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                  hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.lexendDeca(
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: Color(0xFF57636C),
                                                                                                        fontSize: 14.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                  enabledBorder: OutlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0xFFDBE2E7),
                                                                                                      width: 2.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                  ),
                                                                                                  focusedBorder: OutlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0x00000000),
                                                                                                      width: 2.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                  ),
                                                                                                  errorBorder: OutlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0x00000000),
                                                                                                      width: 2.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                  ),
                                                                                                  focusedErrorBorder: OutlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0x00000000),
                                                                                                      width: 2.0,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                  ),
                                                                                                  filled: true,
                                                                                                  fillColor: Colors.white,
                                                                                                  contentPadding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 20.0, 24.0),
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.lexendDeca(
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      color: Color(0xFF1D2429),
                                                                                                      fontSize: 14.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                                maxLines: null,
                                                                                                validator: _model.codigocolabordaorTextControllerValidator.asValidator(context),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                            child: FlutterFlowDropDown<String>(
                                                                                              controller: _model.departamentocolaboradorValueController ??= FormFieldController<String>(null),
                                                                                              options: ['Acolhimento'],
                                                                                              onChanged: (val) => safeSetState(() => _model.departamentocolaboradorValue = val),
                                                                                              width: double.infinity,
                                                                                              height: 50.0,
                                                                                              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    font: GoogleFonts.openSans(
                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                              hintText: 'Selecione seu Departamento',
                                                                                              icon: Icon(
                                                                                                Icons.keyboard_arrow_down_rounded,
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                size: 24.0,
                                                                                              ),
                                                                                              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              elevation: 2.0,
                                                                                              borderColor: FlutterFlowTheme.of(context).primaryText,
                                                                                              borderWidth: 2.0,
                                                                                              borderRadius: 8.0,
                                                                                              margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                              hidesUnderline: true,
                                                                                              isSearchable: false,
                                                                                              isMultiSelect: false,
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsets.all(5.0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.min,
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 5.0),
                                                                                                  child: FFButtonWidget(
                                                                                                    onPressed: () async {
                                                                                                      if (_model.codigocolabordaorTextController.text != 'praiadorosa') {
                                                                                                        await showDialog(
                                                                                                          context: context,
                                                                                                          builder: (alertDialogContext) {
                                                                                                            return AlertDialog(
                                                                                                              title: Text('Código de acesso incorreto!'),
                                                                                                              content: Text('Se você não tem código de acesso entre em contrato com um de nossos representantes, ou envie um e-mail para sac@cannadrop.com.br.'),
                                                                                                              actions: [
                                                                                                                TextButton(
                                                                                                                  onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                                  child: Text('Ok'),
                                                                                                                ),
                                                                                                              ],
                                                                                                            );
                                                                                                          },
                                                                                                        );
                                                                                                        return;
                                                                                                      }
                                                                                                      if (_model.formKey.currentState == null || !_model.formKey.currentState!.validate()) {
                                                                                                        return;
                                                                                                      }
                                                                                                      if (_model.dropregiaocolaboradorValue == null) {
                                                                                                        return;
                                                                                                      }
                                                                                                      if (_model.departamentocolaboradorValue == null) {
                                                                                                        return;
                                                                                                      }

                                                                                                      await currentUserReference!.update(createUserRecordData(
                                                                                                        colaborador: true,
                                                                                                        permissao: 'colaborador',
                                                                                                        paciente: false,
                                                                                                      ));

                                                                                                      await ColaboradorRecord.collection.doc().set(createColaboradorRecordData(
                                                                                                            nome: _model.nomecolaboradorTextController.text,
                                                                                                            codigoacesso: _model.codigocolabordaorTextController.text,
                                                                                                            regiao: _model.dropregiaocolaboradorValue,
                                                                                                            departamento: _model.departamentocolaboradorValue,
                                                                                                            iduser: currentUserReference,
                                                                                                            colaborador: true,
                                                                                                            imagem: '',
                                                                                                          ));

                                                                                                      context.pushNamed(ProfilecolaboradorWidget.routeName);
                                                                                                    },
                                                                                                    text: 'Cadastrar',
                                                                                                    options: FFButtonOptions(
                                                                                                      width: 180.0,
                                                                                                      height: 45.0,
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                      iconPadding: EdgeInsets.all(0.0),
                                                                                                      color: Color(0xFF2E4B4C),
                                                                                                      textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                            font: GoogleFonts.openSans(
                                                                                                              fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                            ),
                                                                                                            color: Colors.white,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                          ),
                                                                                                      elevation: 4.0,
                                                                                                      borderSide: BorderSide(
                                                                                                        color: Colors.transparent,
                                                                                                        width: 1.0,
                                                                                                      ),
                                                                                                      borderRadius: BorderRadius.circular(15.0),
                                                                                                      hoverColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                      hoverElevation: 5.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 5.0),
                                                                                                  child: FFButtonWidget(
                                                                                                    onPressed: () async {
                                                                                                      context.safePop();
                                                                                                    },
                                                                                                    text: 'Voltar',
                                                                                                    options: FFButtonOptions(
                                                                                                      width: 113.0,
                                                                                                      height: 41.0,
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                      iconPadding: EdgeInsets.all(0.0),
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                            font: GoogleFonts.openSans(
                                                                                                              fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                              fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                            ),
                                                                                                            color: Color(0xFF2E4B4C),
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                          ),
                                                                                                      elevation: 4.0,
                                                                                                      borderSide: BorderSide(
                                                                                                        color: Colors.transparent,
                                                                                                        width: 1.0,
                                                                                                      ),
                                                                                                      borderRadius: BorderRadius.circular(10.0),
                                                                                                      hoverColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                      hoverElevation: 5.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            children: [
                                                                                              Text(
                                                                                                'Não tem o código de acesso?',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      font: GoogleFonts.openSans(
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                      fontSize: 11.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                    ),
                                                                                              ),
                                                                                              InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  await launchUrl(Uri(
                                                                                                      scheme: 'mailto',
                                                                                                      path: 'viniciusmma@hotmail.com',
                                                                                                      query: {
                                                                                                        'subject': 'Código de acesso.',
                                                                                                        'body': 'Olá, Preciso de um código de acesso.',
                                                                                                      }.entries.map((MapEntry<String, String> e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}').join('&')));
                                                                                                  await showDialog(
                                                                                                    context: context,
                                                                                                    builder: (alertDialogContext) {
                                                                                                      return AlertDialog(
                                                                                                        title: Text('Seu pedido foi enviado com sucesso!'),
                                                                                                        content: Text('Agora você vai receber  um e-mail oom o codígo dentro de 24 horas.'),
                                                                                                        actions: [
                                                                                                          TextButton(
                                                                                                            onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                            child: Text('Ok'),
                                                                                                          ),
                                                                                                        ],
                                                                                                      );
                                                                                                    },
                                                                                                  );
                                                                                                },
                                                                                                child: Text(
                                                                                                  ' clique aqui',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.openSans(
                                                                                                          fontWeight: FontWeight.bold,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: Color(0xFF789B9C),
                                                                                                        fontSize: 11.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
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
                                                            ),
                                                          ],
                                                        ),
                                                        onEnter:
                                                            ((event) async {
                                                          safeSetState(() =>
                                                              _model.mouseRegionHovered =
                                                                  true);
                                                        }),
                                                        onExit: ((event) async {
                                                          safeSetState(() =>
                                                              _model.mouseRegionHovered =
                                                                  false);
                                                        }),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
