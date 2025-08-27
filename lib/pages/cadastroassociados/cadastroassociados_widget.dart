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
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'cadastroassociados_model.dart';
export 'cadastroassociados_model.dart';

class CadastroassociadosWidget extends StatefulWidget {
  const CadastroassociadosWidget({super.key});

  static String routeName = 'cadastroassociados';
  static String routePath = 'cadastroassociados';

  @override
  State<CadastroassociadosWidget> createState() =>
      _CadastroassociadosWidgetState();
}

class _CadastroassociadosWidgetState extends State<CadastroassociadosWidget>
    with TickerProviderStateMixin {
  late CadastroassociadosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CadastroassociadosModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 2,
    )..addListener(() => safeSetState(() {}));

    _model.nomepacienteTextController ??= TextEditingController();
    _model.nomepacienteFocusNode ??= FocusNode();

    _model.telefonepacienteTextController ??= TextEditingController();
    _model.telefonepacienteFocusNode ??= FocusNode();

    _model.nacionalidadepacienteTextController ??= TextEditingController();
    _model.nacionalidadepacienteFocusNode ??= FocusNode();

    _model.datanascipacienteTextController ??= TextEditingController();
    _model.datanascipacienteFocusNode ??= FocusNode();

    _model.datanascipacienteMask = MaskTextInputFormatter(mask: '##/##/####');
    _model.profissaopacienteTextController ??= TextEditingController();
    _model.profissaopacienteFocusNode ??= FocusNode();

    _model.nomemedicoTextController ??= TextEditingController();
    _model.nomemedicoFocusNode ??= FocusNode();

    _model.especialidademedicoTextController ??= TextEditingController();
    _model.especialidademedicoFocusNode ??= FocusNode();

    _model.crmmedicoTextController ??= TextEditingController();
    _model.crmmedicoFocusNode ??= FocusNode();

    _model.crmmedicoMask = MaskTextInputFormatter(mask: 'CRM-##/##.###');
    _model.regiaomedicoTextController ??= TextEditingController();
    _model.regiaomedicoFocusNode ??= FocusNode();

    _model.regiaomedicoMask =
        MaskTextInputFormatter(mask: '+## (###) ####-####');
    _model.valormedicoTextController ??= TextEditingController();
    _model.valormedicoFocusNode ??= FocusNode();

    _model.valormedicoMask = MaskTextInputFormatter(mask: '###,###');
    _model.nomecolaboradorTextController ??= TextEditingController();
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Align(
          alignment: AlignmentDirectional(0.0, -1.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                child: Container(
                  width: 1024.0,
                  height: 847.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 851.0,
                          decoration: BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 230.0,
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
                                            begin:
                                                AlignmentDirectional(0.0, 1.0),
                                            end: AlignmentDirectional(0, -1.0),
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(30.0),
                                            bottomRight: Radius.circular(30.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 40.0, 0.0, 0.0),
                                              child: Image.asset(
                                                'assets/images/logo_white_rose.png',
                                                width: 230.0,
                                                height: 90.0,
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 24.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 8.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'Bem-Vindo!',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displaySmall
                                                              .override(
                                                                font: GoogleFonts
                                                                    .lexendDeca(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .displaySmall
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 30.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'O acesso deve ser para todos!',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .lexendDeca(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w100,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18.0,
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
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Wrap(
                                        spacing: 0.0,
                                        runSpacing: 0.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          Transform.rotate(
                                            angle: 0.0 * (math.pi / 180),
                                            child: MouseRegion(
                                              opaque: false,
                                              cursor: MouseCursor.defer ??
                                                  MouseCursor.defer,
                                              child: Container(
                                                width: 1024.0,
                                                child: Stack(
                                                  children: [
                                                    Container(
                                                      width: 800.0,
                                                      height: 600.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    30.0,
                                                                    5.0,
                                                                    30.0,
                                                                    0.0),
                                                        child: Column(
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  Alignment(
                                                                      0.0, 0),
                                                              child: TabBar(
                                                                labelColor: Color(
                                                                    0xFF2E4B4C),
                                                                unselectedLabelColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                labelStyle: FlutterFlowTheme.of(
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
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium
                                                                          .fontStyle,
                                                                    ),
                                                                unselectedLabelStyle:
                                                                    TextStyle(),
                                                                indicatorColor:
                                                                    Color(
                                                                        0xFF2E4B4C),
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            4.0),
                                                                tabs: [
                                                                  Tab(
                                                                    text:
                                                                        'Paciente',
                                                                    icon:
                                                                        FaIcon(
                                                                      FontAwesomeIcons
                                                                          .userPlus,
                                                                      color: Color(
                                                                          0xFF2E4B4C),
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                  ),
                                                                  Tab(
                                                                    text:
                                                                        'Médico',
                                                                    icon:
                                                                        FaIcon(
                                                                      FontAwesomeIcons
                                                                          .userMd,
                                                                    ),
                                                                  ),
                                                                  Tab(
                                                                    text:
                                                                        'Colaborador',
                                                                    icon:
                                                                        FaIcon(
                                                                      FontAwesomeIcons
                                                                          .userNurse,
                                                                    ),
                                                                  ),
                                                                ],
                                                                controller: _model
                                                                    .tabBarController,
                                                                onTap:
                                                                    (i) async {
                                                                  [
                                                                    () async {},
                                                                    () async {},
                                                                    () async {}
                                                                  ][i]();
                                                                },
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: TabBarView(
                                                                controller: _model
                                                                    .tabBarController,
                                                                children: [
                                                                  Form(
                                                                    key: _model
                                                                        .formKey2,
                                                                    autovalidateMode:
                                                                        AutovalidateMode
                                                                            .disabled,
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          20.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child:
                                                                          SingleChildScrollView(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                              child: TextFormField(
                                                                                controller: _model.nomepacienteTextController,
                                                                                focusNode: _model.nomepacienteFocusNode,
                                                                                autofocus: true,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  labelText: 'Nome Completo',
                                                                                  labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.lexendDeca(
                                                                                          fontWeight: FontWeight.normal,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        color: Color(0xFF57636C),
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                  hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.lexendDeca(
                                                                                          fontWeight: FontWeight.normal,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        color: Color(0xFF2E4B4C),
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                  enabledBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0xFF2E4B4C),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0xFF2E4B4C),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  errorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0xFFF10061),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedErrorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0xFFF10061),
                                                                                      width: 1.0,
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
                                                                                keyboardType: TextInputType.name,
                                                                                validator: _model.nomepacienteTextControllerValidator.asValidator(context),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 8.0),
                                                                              child: TextFormField(
                                                                                controller: _model.telefonepacienteTextController,
                                                                                focusNode: _model.telefonepacienteFocusNode,
                                                                                autofocus: true,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  labelText: 'Telefone',
                                                                                  labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.lexendDeca(
                                                                                          fontWeight: FontWeight.normal,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        color: Color(0xFF2E4B4C),
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                  hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.lexendDeca(
                                                                                          fontWeight: FontWeight.normal,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        color: Color(0xFF2E4B4C),
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                  enabledBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0xFF2E4B4C),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0xFF2E4B4C),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  errorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0x00000000),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedErrorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0x00000000),
                                                                                      width: 1.0,
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
                                                                                validator: _model.telefonepacienteTextControllerValidator.asValidator(context),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                              child: FlutterFlowDropDown<String>(
                                                                                controller: _model.estadocivilpacienteValueController ??= FormFieldController<String>(null),
                                                                                options: [
                                                                                  'Casado(a)',
                                                                                  'Solteiro(a)',
                                                                                  'Separado(a)',
                                                                                  'Viúvo(a)',
                                                                                  'Divorciado(a)'
                                                                                ],
                                                                                onChanged: (val) => safeSetState(() => _model.estadocivilpacienteValue = val),
                                                                                width: double.infinity,
                                                                                height: 50.0,
                                                                                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.openSans(
                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      color: Color(0xFF2E4B4C),
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                hintText: 'Estado Civil',
                                                                                icon: Icon(
                                                                                  Icons.keyboard_arrow_down_rounded,
                                                                                  color: Color(0xFF2E4B4C),
                                                                                  size: 24.0,
                                                                                ),
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                elevation: 2.0,
                                                                                borderColor: Color(0xFF2E4B4C),
                                                                                borderWidth: 1.0,
                                                                                borderRadius: 8.0,
                                                                                margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                hidesUnderline: true,
                                                                                isSearchable: false,
                                                                                isMultiSelect: false,
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 0.0),
                                                                              child: Container(
                                                                                width: double.infinity,
                                                                                child: TextFormField(
                                                                                  controller: _model.nacionalidadepacienteTextController,
                                                                                  focusNode: _model.nacionalidadepacienteFocusNode,
                                                                                  autofocus: true,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    labelText: 'Nacionalidade',
                                                                                    labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.lexendDeca(
                                                                                            fontWeight: FontWeight.normal,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                          color: Color(0xFF57636C),
                                                                                          fontSize: 12.0,
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
                                                                                        color: Color(0xFF2E4B4C),
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF2E4B4C),
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFFF10061),
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFFF10061),
                                                                                        width: 1.0,
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
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                  maxLines: null,
                                                                                  validator: _model.nacionalidadepacienteTextControllerValidator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 10.0, 5.0),
                                                                                      child: Container(
                                                                                        width: 160.0,
                                                                                        child: TextFormField(
                                                                                          controller: _model.datanascipacienteTextController,
                                                                                          focusNode: _model.datanascipacienteFocusNode,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            labelText: 'Data de Nasc.',
                                                                                            labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  font: GoogleFonts.lexendDeca(
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                                  color: Color(0xFF57636C),
                                                                                                  fontSize: 11.0,
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
                                                                                                color: Color(0xFF2E4B4C),
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            focusedBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0xFF2E4B4C),
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            errorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0xFFF10061),
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            focusedErrorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0xFFF10061),
                                                                                                width: 1.0,
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
                                                                                          keyboardType: TextInputType.datetime,
                                                                                          validator: _model.datanascipacienteTextControllerValidator.asValidator(context),
                                                                                          inputFormatters: [
                                                                                            _model.datanascipacienteMask
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Expanded(
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 5.0),
                                                                                      child: Container(
                                                                                        width: 160.0,
                                                                                        child: TextFormField(
                                                                                          controller: _model.profissaopacienteTextController,
                                                                                          focusNode: _model.profissaopacienteFocusNode,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            labelText: 'Profissão',
                                                                                            labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  font: GoogleFonts.lexendDeca(
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                                  color: Color(0xFF57636C),
                                                                                                  fontSize: 12.0,
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
                                                                                                color: Color(0xFF2E4B4C),
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            focusedBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0xFF2E4B4C),
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            errorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0xFFF10061),
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            focusedErrorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0xFFF10061),
                                                                                                width: 1.0,
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
                                                                                          validator: _model.profissaopacienteTextControllerValidator.asValidator(context),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                                                                                  child: FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      if (_model.formKey2.currentState == null || !_model.formKey2.currentState!.validate()) {
                                                                                        return;
                                                                                      }

                                                                                      await currentUserReference!.update(createUserRecordData(
                                                                                        displayName: _model.nomepacienteTextController.text,
                                                                                        phoneNumber: _model.telefonepacienteTextController.text,
                                                                                        estadocivil: _model.estadocivilpacienteValue,
                                                                                        nacionalidade: _model.nacionalidadepacienteTextController.text,
                                                                                        datanascimento: _model.datanascipacienteTextController.text,
                                                                                        profissao: _model.profissaopacienteTextController.text,
                                                                                      ));

                                                                                      context.pushNamed(ProfilepacienteWidget.routeName);
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
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Form(
                                                                    key: _model
                                                                        .formKey3,
                                                                    autovalidateMode:
                                                                        AutovalidateMode
                                                                            .disabled,
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          20.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child:
                                                                          SingleChildScrollView(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                              child: TextFormField(
                                                                                controller: _model.nomemedicoTextController,
                                                                                focusNode: _model.nomemedicoFocusNode,
                                                                                autofocus: true,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  labelText: 'Nome Completo',
                                                                                  labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.lexendDeca(
                                                                                          fontWeight: FontWeight.normal,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        color: Color(0xFF57636C),
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                  hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.lexendDeca(
                                                                                          fontWeight: FontWeight.normal,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        color: Color(0xFF2E4B4C),
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                  enabledBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0xFF2E4B4C),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0xFF2E4B4C),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  errorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0xFFF10061),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedErrorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0xFFF10061),
                                                                                      width: 1.0,
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
                                                                                keyboardType: TextInputType.name,
                                                                                validator: _model.nomemedicoTextControllerValidator.asValidator(context),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 8.0),
                                                                              child: TextFormField(
                                                                                controller: _model.especialidademedicoTextController,
                                                                                focusNode: _model.especialidademedicoFocusNode,
                                                                                autofocus: true,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  labelText: 'Especialidade',
                                                                                  labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.lexendDeca(
                                                                                          fontWeight: FontWeight.normal,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        color: Color(0xFF2E4B4C),
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                  hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.lexendDeca(
                                                                                          fontWeight: FontWeight.normal,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        color: Color(0xFF2E4B4C),
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                  enabledBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0xFF2E4B4C),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0xFF2E4B4C),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  errorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0x00000000),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedErrorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0x00000000),
                                                                                      width: 1.0,
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
                                                                                validator: _model.especialidademedicoTextControllerValidator.asValidator(context),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                              child: Container(
                                                                                width: double.infinity,
                                                                                child: TextFormField(
                                                                                  controller: _model.crmmedicoTextController,
                                                                                  focusNode: _model.crmmedicoFocusNode,
                                                                                  autofocus: true,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    labelText: 'CRM',
                                                                                    labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.lexendDeca(
                                                                                            fontWeight: FontWeight.normal,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                          color: Color(0xFF57636C),
                                                                                          fontSize: 12.0,
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
                                                                                        color: Color(0xFF2E4B4C),
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFF2E4B4C),
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFFF10061),
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: Color(0xFFF10061),
                                                                                        width: 1.0,
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
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                  maxLines: null,
                                                                                  validator: _model.crmmedicoTextControllerValidator.asValidator(context),
                                                                                  inputFormatters: [
                                                                                    _model.crmmedicoMask
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 10.0, 5.0),
                                                                                      child: Container(
                                                                                        width: 160.0,
                                                                                        child: TextFormField(
                                                                                          controller: _model.regiaomedicoTextController,
                                                                                          focusNode: _model.regiaomedicoFocusNode,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            labelText: 'Região',
                                                                                            labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  font: GoogleFonts.lexendDeca(
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                                  color: Color(0xFF57636C),
                                                                                                  fontSize: 12.0,
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
                                                                                                color: Color(0xFF2E4B4C),
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            focusedBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0xFF2E4B4C),
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            errorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0xFFF10061),
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            focusedErrorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0xFFF10061),
                                                                                                width: 1.0,
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
                                                                                          keyboardType: TextInputType.phone,
                                                                                          validator: _model.regiaomedicoTextControllerValidator.asValidator(context),
                                                                                          inputFormatters: [
                                                                                            _model.regiaomedicoMask
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Expanded(
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 5.0),
                                                                                      child: Container(
                                                                                        width: 160.0,
                                                                                        child: TextFormField(
                                                                                          controller: _model.valormedicoTextController,
                                                                                          focusNode: _model.valormedicoFocusNode,
                                                                                          textCapitalization: TextCapitalization.none,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            labelText: 'Valor',
                                                                                            labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  font: GoogleFonts.lexendDeca(
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                  ),
                                                                                                  color: Color(0xFF57636C),
                                                                                                  fontSize: 12.0,
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
                                                                                                color: Color(0xFF2E4B4C),
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            focusedBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0xFF2E4B4C),
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            errorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0xFFF10061),
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            focusedErrorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0xFFF10061),
                                                                                                width: 1.0,
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
                                                                                          keyboardType: const TextInputType.numberWithOptions(decimal: true),
                                                                                          validator: _model.valormedicoTextControllerValidator.asValidator(context),
                                                                                          inputFormatters: [
                                                                                            _model.valormedicoMask
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                                                                                  child: FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      if (_model.formKey3.currentState == null || !_model.formKey3.currentState!.validate()) {
                                                                                        return;
                                                                                      }
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
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Form(
                                                                    key: _model
                                                                        .formKey1,
                                                                    autovalidateMode:
                                                                        AutovalidateMode
                                                                            .disabled,
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          20.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child:
                                                                          SingleChildScrollView(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                              child: TextFormField(
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
                                                                                keyboardType: TextInputType.name,
                                                                                validator: _model.nomecolaboradorTextControllerValidator.asValidator(context),
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
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    elevation: 2.0,
                                                                                    borderColor: Color(0xFF2E4B4C),
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
                                                                                options: [
                                                                                  'Acolhimento',
                                                                                  'Financeiro',
                                                                                  'Administrativo'
                                                                                ],
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
                                                                                  color: Color(0xFF2E4B4C),
                                                                                  size: 24.0,
                                                                                ),
                                                                                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                elevation: 2.0,
                                                                                borderColor: Color(0xFF2E4B4C),
                                                                                borderWidth: 2.0,
                                                                                borderRadius: 8.0,
                                                                                margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                hidesUnderline: true,
                                                                                isSearchable: false,
                                                                                isMultiSelect: false,
                                                                              ),
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                                                                                  child: FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      if (_model.formKey1.currentState == null || !_model.formKey1.currentState!.validate()) {
                                                                                        return;
                                                                                      }
                                                                                      if (_model.dropregiaocolaboradorValue == null) {
                                                                                        return;
                                                                                      }
                                                                                      if (_model.departamentocolaboradorValue == null) {
                                                                                        return;
                                                                                      }

                                                                                      await ColaboradorRecord.collection.doc().set(createColaboradorRecordData(
                                                                                            nome: _model.nomecolaboradorTextController.text,
                                                                                            codigoacesso: _model.codigocolabordaorTextController.text,
                                                                                            regiao: _model.dropregiaocolaboradorValue,
                                                                                            departamento: _model.departamentocolaboradorValue,
                                                                                            iduser: currentUserReference,
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
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
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
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              onEnter: ((event) async {
                                                safeSetState(() => _model
                                                    .mouseRegionHovered = true);
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
    );
  }
}
