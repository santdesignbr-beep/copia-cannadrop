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
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'cadastropaciente2_model.dart';
export 'cadastropaciente2_model.dart';

class Cadastropaciente2Widget extends StatefulWidget {
  const Cadastropaciente2Widget({super.key});

  static String routeName = 'cadastropaciente2';
  static String routePath = 'cadastropaciente2';

  @override
  State<Cadastropaciente2Widget> createState() =>
      _Cadastropaciente2WidgetState();
}

class _Cadastropaciente2WidgetState extends State<Cadastropaciente2Widget> {
  late Cadastropaciente2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Cadastropaciente2Model());

    _model.cpfTextController ??= TextEditingController();
    _model.cpfFocusNode ??= FocusNode();

    _model.cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
    _model.rgTextController ??= TextEditingController();
    _model.rgFocusNode ??= FocusNode();

    _model.ruaTextController ??= TextEditingController();
    _model.ruaFocusNode ??= FocusNode();

    _model.cepTextController ??= TextEditingController();
    _model.cepFocusNode ??= FocusNode();

    _model.cepMask = MaskTextInputFormatter(mask: '#####-###');
    _model.numeroTextController ??= TextEditingController();
    _model.numeroFocusNode ??= FocusNode();

    _model.complementoTextController ??= TextEditingController();
    _model.complementoFocusNode ??= FocusNode();

    _model.bairroTextController ??= TextEditingController();
    _model.bairroFocusNode ??= FocusNode();

    _model.cidadeTextController ??= TextEditingController();
    _model.cidadeFocusNode ??= FocusNode();

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
                                width: 1024.0,
                                decoration: BoxDecoration(),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 191.0,
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
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  40.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Image.asset(
                                                        'assets/images/logo_white_rose.png',
                                                        width: 230.0,
                                                        height: 90.0,
                                                        fit: BoxFit.fitWidth,
                                                      ),
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
                                        width: double.infinity,
                                        height: 700.0,
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
                                                              width: 500.0,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Form(
                                                                key: _model
                                                                    .formKey,
                                                                autovalidateMode:
                                                                    AutovalidateMode
                                                                        .disabled,
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          20.0,
                                                                          10.0,
                                                                          0.0),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              15.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                child: FaIcon(
                                                                                  FontAwesomeIcons.fileSignature,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 24.0,
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                'Documentos',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.openSans(
                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              20.0,
                                                                              5.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                55.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 20.0,
                                                                                  color: Color(0x14000000),
                                                                                  offset: Offset(
                                                                                    0.0,
                                                                                    10.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Expanded(
                                                                                    flex: 4,
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                      child: TextFormField(
                                                                                        controller: _model.cpfTextController,
                                                                                        focusNode: _model.cpfFocusNode,
                                                                                        onChanged: (_) => EasyDebounce.debounce(
                                                                                          '_model.cpfTextController',
                                                                                          Duration(milliseconds: 500),
                                                                                          () => safeSetState(() {}),
                                                                                        ),
                                                                                        autofocus: true,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          hintText: 'CPF',
                                                                                          enabledBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          focusedBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          errorBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          focusedErrorBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                              font: GoogleFonts.lexendDeca(
                                                                                                fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                            ),
                                                                                        textAlign: TextAlign.start,
                                                                                        keyboardType: TextInputType.number,
                                                                                        validator: _model.cpfTextControllerValidator.asValidator(context),
                                                                                        inputFormatters: [
                                                                                          _model.cpfMask
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              20.0,
                                                                              5.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                55.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 20.0,
                                                                                  color: Color(0x14000000),
                                                                                  offset: Offset(
                                                                                    0.0,
                                                                                    10.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Expanded(
                                                                                    flex: 4,
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                      child: TextFormField(
                                                                                        controller: _model.rgTextController,
                                                                                        focusNode: _model.rgFocusNode,
                                                                                        onChanged: (_) => EasyDebounce.debounce(
                                                                                          '_model.rgTextController',
                                                                                          Duration(milliseconds: 500),
                                                                                          () => safeSetState(() {}),
                                                                                        ),
                                                                                        autofocus: true,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          hintText: 'RG',
                                                                                          enabledBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          focusedBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          errorBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          focusedErrorBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                              font: GoogleFonts.lexendDeca(
                                                                                                fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                            ),
                                                                                        textAlign: TextAlign.start,
                                                                                        validator: _model.rgTextControllerValidator.asValidator(context),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              15.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.location_on_sharp,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 24.0,
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                'Endereço',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.openSans(
                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              20.0,
                                                                              5.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                55.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 20.0,
                                                                                  color: Color(0x14000000),
                                                                                  offset: Offset(
                                                                                    0.0,
                                                                                    10.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Expanded(
                                                                                    flex: 4,
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                      child: TextFormField(
                                                                                        controller: _model.ruaTextController,
                                                                                        focusNode: _model.ruaFocusNode,
                                                                                        onChanged: (_) => EasyDebounce.debounce(
                                                                                          '_model.ruaTextController',
                                                                                          Duration(milliseconds: 500),
                                                                                          () => safeSetState(() {}),
                                                                                        ),
                                                                                        autofocus: true,
                                                                                        textCapitalization: TextCapitalization.sentences,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          hintText: 'Rua',
                                                                                          enabledBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          focusedBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          errorBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          focusedErrorBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                              font: GoogleFonts.lexendDeca(
                                                                                                fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                            ),
                                                                                        textAlign: TextAlign.start,
                                                                                        validator: _model.ruaTextControllerValidator.asValidator(context),
                                                                                        inputFormatters: [
                                                                                          if (!isAndroid && !isiOS)
                                                                                            TextInputFormatter.withFunction((oldValue, newValue) {
                                                                                              return TextEditingValue(
                                                                                                selection: newValue.selection,
                                                                                                text: newValue.text.toCapitalization(TextCapitalization.sentences),
                                                                                              );
                                                                                            }),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              20.0,
                                                                              8.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                  child: Container(
                                                                                    width: double.infinity,
                                                                                    height: 55.0,
                                                                                    decoration: BoxDecoration(
                                                                                      boxShadow: [
                                                                                        BoxShadow(
                                                                                          blurRadius: 20.0,
                                                                                          color: Color(0x14000000),
                                                                                          offset: Offset(
                                                                                            0.0,
                                                                                            10.0,
                                                                                          ),
                                                                                        )
                                                                                      ],
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                      border: Border.all(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            flex: 4,
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                              child: TextFormField(
                                                                                                controller: _model.cepTextController,
                                                                                                focusNode: _model.cepFocusNode,
                                                                                                onChanged: (_) => EasyDebounce.debounce(
                                                                                                  '_model.cepTextController',
                                                                                                  Duration(milliseconds: 500),
                                                                                                  () => safeSetState(() {}),
                                                                                                ),
                                                                                                autofocus: true,
                                                                                                obscureText: false,
                                                                                                decoration: InputDecoration(
                                                                                                  hintText: 'CEP',
                                                                                                  enabledBorder: UnderlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0x00000000),
                                                                                                      width: 1.0,
                                                                                                    ),
                                                                                                    borderRadius: const BorderRadius.only(
                                                                                                      topLeft: Radius.circular(4.0),
                                                                                                      topRight: Radius.circular(4.0),
                                                                                                    ),
                                                                                                  ),
                                                                                                  focusedBorder: UnderlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0x00000000),
                                                                                                      width: 1.0,
                                                                                                    ),
                                                                                                    borderRadius: const BorderRadius.only(
                                                                                                      topLeft: Radius.circular(4.0),
                                                                                                      topRight: Radius.circular(4.0),
                                                                                                    ),
                                                                                                  ),
                                                                                                  errorBorder: UnderlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0x00000000),
                                                                                                      width: 1.0,
                                                                                                    ),
                                                                                                    borderRadius: const BorderRadius.only(
                                                                                                      topLeft: Radius.circular(4.0),
                                                                                                      topRight: Radius.circular(4.0),
                                                                                                    ),
                                                                                                  ),
                                                                                                  focusedErrorBorder: UnderlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0x00000000),
                                                                                                      width: 1.0,
                                                                                                    ),
                                                                                                    borderRadius: const BorderRadius.only(
                                                                                                      topLeft: Radius.circular(4.0),
                                                                                                      topRight: Radius.circular(4.0),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                      font: GoogleFonts.lexendDeca(
                                                                                                        fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                      ),
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      fontSize: 12.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                    ),
                                                                                                textAlign: TextAlign.start,
                                                                                                validator: _model.cepTextControllerValidator.asValidator(context),
                                                                                                inputFormatters: [_model.cepMask],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  height: 55.0,
                                                                                  decoration: BoxDecoration(
                                                                                    boxShadow: [
                                                                                      BoxShadow(
                                                                                        blurRadius: 20.0,
                                                                                        color: Color(0x14000000),
                                                                                        offset: Offset(
                                                                                          0.0,
                                                                                          10.0,
                                                                                        ),
                                                                                      )
                                                                                    ],
                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          flex: 4,
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                            child: TextFormField(
                                                                                              controller: _model.numeroTextController,
                                                                                              focusNode: _model.numeroFocusNode,
                                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                                '_model.numeroTextController',
                                                                                                Duration(milliseconds: 500),
                                                                                                () => safeSetState(() {}),
                                                                                              ),
                                                                                              autofocus: true,
                                                                                              obscureText: false,
                                                                                              decoration: InputDecoration(
                                                                                                hintText: 'N°',
                                                                                                enabledBorder: UnderlineInputBorder(
                                                                                                  borderSide: BorderSide(
                                                                                                    color: Color(0x00000000),
                                                                                                    width: 1.0,
                                                                                                  ),
                                                                                                  borderRadius: const BorderRadius.only(
                                                                                                    topLeft: Radius.circular(4.0),
                                                                                                    topRight: Radius.circular(4.0),
                                                                                                  ),
                                                                                                ),
                                                                                                focusedBorder: UnderlineInputBorder(
                                                                                                  borderSide: BorderSide(
                                                                                                    color: Color(0x00000000),
                                                                                                    width: 1.0,
                                                                                                  ),
                                                                                                  borderRadius: const BorderRadius.only(
                                                                                                    topLeft: Radius.circular(4.0),
                                                                                                    topRight: Radius.circular(4.0),
                                                                                                  ),
                                                                                                ),
                                                                                                errorBorder: UnderlineInputBorder(
                                                                                                  borderSide: BorderSide(
                                                                                                    color: Color(0x00000000),
                                                                                                    width: 1.0,
                                                                                                  ),
                                                                                                  borderRadius: const BorderRadius.only(
                                                                                                    topLeft: Radius.circular(4.0),
                                                                                                    topRight: Radius.circular(4.0),
                                                                                                  ),
                                                                                                ),
                                                                                                focusedErrorBorder: UnderlineInputBorder(
                                                                                                  borderSide: BorderSide(
                                                                                                    color: Color(0x00000000),
                                                                                                    width: 1.0,
                                                                                                  ),
                                                                                                  borderRadius: const BorderRadius.only(
                                                                                                    topLeft: Radius.circular(4.0),
                                                                                                    topRight: Radius.circular(4.0),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                    font: GoogleFonts.lexendDeca(
                                                                                                      fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                    ),
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                  ),
                                                                                              textAlign: TextAlign.start,
                                                                                              keyboardType: TextInputType.number,
                                                                                              validator: _model.numeroTextControllerValidator.asValidator(context),
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
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              20.0,
                                                                              5.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                55.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 20.0,
                                                                                  color: Color(0x14000000),
                                                                                  offset: Offset(
                                                                                    0.0,
                                                                                    10.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Expanded(
                                                                                    flex: 4,
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                      child: TextFormField(
                                                                                        controller: _model.complementoTextController,
                                                                                        focusNode: _model.complementoFocusNode,
                                                                                        onChanged: (_) => EasyDebounce.debounce(
                                                                                          '_model.complementoTextController',
                                                                                          Duration(milliseconds: 500),
                                                                                          () => safeSetState(() {}),
                                                                                        ),
                                                                                        autofocus: true,
                                                                                        textCapitalization: TextCapitalization.sentences,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          hintText: 'Complemento',
                                                                                          enabledBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          focusedBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          errorBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          focusedErrorBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                              font: GoogleFonts.lexendDeca(
                                                                                                fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                            ),
                                                                                        textAlign: TextAlign.start,
                                                                                        validator: _model.complementoTextControllerValidator.asValidator(context),
                                                                                        inputFormatters: [
                                                                                          if (!isAndroid && !isiOS)
                                                                                            TextInputFormatter.withFunction((oldValue, newValue) {
                                                                                              return TextEditingValue(
                                                                                                selection: newValue.selection,
                                                                                                text: newValue.text.toCapitalization(TextCapitalization.sentences),
                                                                                              );
                                                                                            }),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              20.0,
                                                                              5.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                55.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 20.0,
                                                                                  color: Color(0x14000000),
                                                                                  offset: Offset(
                                                                                    0.0,
                                                                                    10.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                              border: Border.all(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Expanded(
                                                                                    flex: 4,
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                      child: TextFormField(
                                                                                        controller: _model.bairroTextController,
                                                                                        focusNode: _model.bairroFocusNode,
                                                                                        onChanged: (_) => EasyDebounce.debounce(
                                                                                          '_model.bairroTextController',
                                                                                          Duration(milliseconds: 500),
                                                                                          () => safeSetState(() {}),
                                                                                        ),
                                                                                        autofocus: true,
                                                                                        textCapitalization: TextCapitalization.sentences,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          hintText: 'Bairro',
                                                                                          enabledBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          focusedBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          errorBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          focusedErrorBorder: UnderlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0x00000000),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: const BorderRadius.only(
                                                                                              topLeft: Radius.circular(4.0),
                                                                                              topRight: Radius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                              font: GoogleFonts.lexendDeca(
                                                                                                fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                            ),
                                                                                        textAlign: TextAlign.start,
                                                                                        validator: _model.bairroTextControllerValidator.asValidator(context),
                                                                                        inputFormatters: [
                                                                                          if (!isAndroid && !isiOS)
                                                                                            TextInputFormatter.withFunction((oldValue, newValue) {
                                                                                              return TextEditingValue(
                                                                                                selection: newValue.selection,
                                                                                                text: newValue.text.toCapitalization(TextCapitalization.sentences),
                                                                                              );
                                                                                            }),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              8.0,
                                                                              20.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 5.0),
                                                                                  child: Container(
                                                                                    width: double.infinity,
                                                                                    height: 55.0,
                                                                                    decoration: BoxDecoration(
                                                                                      boxShadow: [
                                                                                        BoxShadow(
                                                                                          blurRadius: 20.0,
                                                                                          color: Color(0x14000000),
                                                                                          offset: Offset(
                                                                                            0.0,
                                                                                            10.0,
                                                                                          ),
                                                                                        )
                                                                                      ],
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                      border: Border.all(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            flex: 4,
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                              child: TextFormField(
                                                                                                controller: _model.cidadeTextController,
                                                                                                focusNode: _model.cidadeFocusNode,
                                                                                                onChanged: (_) => EasyDebounce.debounce(
                                                                                                  '_model.cidadeTextController',
                                                                                                  Duration(milliseconds: 500),
                                                                                                  () => safeSetState(() {}),
                                                                                                ),
                                                                                                autofocus: true,
                                                                                                textCapitalization: TextCapitalization.sentences,
                                                                                                obscureText: false,
                                                                                                decoration: InputDecoration(
                                                                                                  hintText: 'Cidade',
                                                                                                  enabledBorder: UnderlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0x00000000),
                                                                                                      width: 1.0,
                                                                                                    ),
                                                                                                    borderRadius: const BorderRadius.only(
                                                                                                      topLeft: Radius.circular(4.0),
                                                                                                      topRight: Radius.circular(4.0),
                                                                                                    ),
                                                                                                  ),
                                                                                                  focusedBorder: UnderlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0x00000000),
                                                                                                      width: 1.0,
                                                                                                    ),
                                                                                                    borderRadius: const BorderRadius.only(
                                                                                                      topLeft: Radius.circular(4.0),
                                                                                                      topRight: Radius.circular(4.0),
                                                                                                    ),
                                                                                                  ),
                                                                                                  errorBorder: UnderlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0x00000000),
                                                                                                      width: 1.0,
                                                                                                    ),
                                                                                                    borderRadius: const BorderRadius.only(
                                                                                                      topLeft: Radius.circular(4.0),
                                                                                                      topRight: Radius.circular(4.0),
                                                                                                    ),
                                                                                                  ),
                                                                                                  focusedErrorBorder: UnderlineInputBorder(
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Color(0x00000000),
                                                                                                      width: 1.0,
                                                                                                    ),
                                                                                                    borderRadius: const BorderRadius.only(
                                                                                                      topLeft: Radius.circular(4.0),
                                                                                                      topRight: Radius.circular(4.0),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                      font: GoogleFonts.lexendDeca(
                                                                                                        fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                      ),
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      fontSize: 12.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                    ),
                                                                                                textAlign: TextAlign.start,
                                                                                                validator: _model.cidadeTextControllerValidator.asValidator(context),
                                                                                                inputFormatters: [
                                                                                                  if (!isAndroid && !isiOS)
                                                                                                    TextInputFormatter.withFunction((oldValue, newValue) {
                                                                                                      return TextEditingValue(
                                                                                                        selection: newValue.selection,
                                                                                                        text: newValue.text.toCapitalization(TextCapitalization.sentences),
                                                                                                      );
                                                                                                    }),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                                  child: Container(
                                                                                    width: double.infinity,
                                                                                    height: 55.0,
                                                                                    decoration: BoxDecoration(
                                                                                      boxShadow: [
                                                                                        BoxShadow(
                                                                                          blurRadius: 20.0,
                                                                                          color: Color(0x14000000),
                                                                                          offset: Offset(
                                                                                            0.0,
                                                                                            10.0,
                                                                                          ),
                                                                                        )
                                                                                      ],
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    child: StreamBuilder<List<RegiaoRecord>>(
                                                                                      stream: queryRegiaoRecord(
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
                                                                                        List<RegiaoRecord> columnRegiaoRecordList = snapshot.data!;
                                                                                        // Return an empty Container when the item does not exist.
                                                                                        if (snapshot.data!.isEmpty) {
                                                                                          return Container();
                                                                                        }
                                                                                        final columnRegiaoRecord = columnRegiaoRecordList.isNotEmpty ? columnRegiaoRecordList.first : null;

                                                                                        return Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            StreamBuilder<List<RegiaoRecord>>(
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
                                                                                                List<RegiaoRecord> dropDownRegiaoRecordList = snapshot.data!;

                                                                                                return FlutterFlowDropDown<String>(
                                                                                                  controller: _model.dropDownValueController ??= FormFieldController<String>(null),
                                                                                                  options: dropDownRegiaoRecordList.map((e) => e.nome).toList(),
                                                                                                  onChanged: (val) => safeSetState(() => _model.dropDownValue = val),
                                                                                                  width: 300.0,
                                                                                                  height: 50.0,
                                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.openSans(
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w500,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                  hintText: 'Estado',
                                                                                                  icon: Icon(
                                                                                                    Icons.keyboard_arrow_down_rounded,
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    size: 24.0,
                                                                                                  ),
                                                                                                  elevation: 2.0,
                                                                                                  borderColor: FlutterFlowTheme.of(context).cannadrop2D5152,
                                                                                                  borderWidth: 2.0,
                                                                                                  borderRadius: 8.0,
                                                                                                  margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                                  hidesUnderline: true,
                                                                                                  isSearchable: false,
                                                                                                  isMultiSelect: false,
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.all(10.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    if (_model.formKey.currentState == null || !_model.formKey.currentState!.validate()) {
                                                                                      return;
                                                                                    }
                                                                                    if (_model.dropDownValue == null) {
                                                                                      return;
                                                                                    }

                                                                                    await currentUserReference!.update(createUserRecordData(
                                                                                      cpf: _model.cpfTextController.text,
                                                                                      rg: _model.rgTextController.text,
                                                                                      rua: _model.ruaTextController.text,
                                                                                      cep: _model.cepTextController.text,
                                                                                      bairro: _model.bairroTextController.text,
                                                                                      estado: _model.dropDownValue,
                                                                                      complemento: _model.complementoTextController.text,
                                                                                      cidade: _model.cidadeTextController.text,
                                                                                      numero: _model.numeroTextController.text,
                                                                                    ));

                                                                                    context.pushNamed(PoscadastropacienteWidget.routeName);
                                                                                  },
                                                                                  text: 'Próximo',
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
                                                                            ],
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
