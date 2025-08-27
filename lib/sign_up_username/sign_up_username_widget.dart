import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sign_up_username_model.dart';
export 'sign_up_username_model.dart';

class SignUpUsernameWidget extends StatefulWidget {
  const SignUpUsernameWidget({super.key});

  static String routeName = 'SignUp_Username';
  static String routePath = 'signUpUsername';

  @override
  State<SignUpUsernameWidget> createState() => _SignUpUsernameWidgetState();
}

class _SignUpUsernameWidgetState extends State<SignUpUsernameWidget> {
  late SignUpUsernameModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpUsernameModel());

    _model.usernameTextController ??= TextEditingController();
    _model.usernameFocusNode ??= FocusNode();

    _model.switchValue = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.usernameTextController?.text = '@';
        }));
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
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 800.0,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 180.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: Image.asset(
                                  Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? 'assets/images/logo_white_rose.png'
                                      : 'assets/images/logo_cannadrop.png',
                                ).image,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 58.0, 0.0, 0.0),
                            child: Text(
                              'Crie seu Username',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    font: GoogleFonts.openSans(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .fontStyle,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                40.0, 18.0, 40.0, 0.0),
                            child: Text(
                              'Escolha um nome de usuário para sua nova conta. Você sempre pode alterá-lo mais tarde.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font: GoogleFonts.openSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                          Form(
                            key: _model.formKey1,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: StreamBuilder<List<AdministrativeRecord>>(
                              stream: queryAdministrativeRecord(
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
                                List<AdministrativeRecord>
                                    columnAdministrativeRecordList =
                                    snapshot.data!;
                                final columnAdministrativeRecord =
                                    columnAdministrativeRecordList.isNotEmpty
                                        ? columnAdministrativeRecordList.first
                                        : null;

                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          40.0, 24.0, 40.0, 12.0),
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        children: [
                                          TextFormField(
                                            controller:
                                                _model.usernameTextController,
                                            focusNode: _model.usernameFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.usernameTextController',
                                              Duration(milliseconds: 1000),
                                              () => safeSetState(() {}),
                                            ),
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: '@username',
                                              hintStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodySmall
                                                  .override(
                                                    font: GoogleFonts.openSans(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontStyle,
                                                    ),
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontStyle,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFDADADA),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              filled: true,
                                              fillColor: Color(0xFFF9F9F9),
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 32.0, 0.0),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.openSans(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF3C6162),
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                            keyboardType: TextInputType.name,
                                            validator: _model
                                                .usernameTextControllerValidator
                                                .asValidator(context),
                                          ),
                                          if (_model.usernameTextController
                                                      .text !=
                                                  '')
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 16.0, 0.0),
                                              child: StreamBuilder<
                                                  List<AdministrativeRecord>>(
                                                stream:
                                                    queryAdministrativeRecord(
                                                  singleRecord: true,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 35.0,
                                                        height: 35.0,
                                                        child:
                                                            SpinKitFadingCube(
                                                          color:
                                                              Color(0xFF789B9C),
                                                          size: 35.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<AdministrativeRecord>
                                                      stackAdministrativeRecordList =
                                                      snapshot.data!;
                                                  final stackAdministrativeRecord =
                                                      stackAdministrativeRecordList
                                                              .isNotEmpty
                                                          ? stackAdministrativeRecordList
                                                              .first
                                                          : null;

                                                  return Container(
                                                    width: 18.0,
                                                    height: 18.0,
                                                    child: Stack(
                                                      children: [
                                                        if (!stackAdministrativeRecord!
                                                            .usernames
                                                            .contains(_model
                                                                .usernameTextController
                                                                .text))
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1.0, 0.0),
                                                            child: Icon(
                                                              Icons
                                                                  .check_circle_outlined,
                                                              color: Color(
                                                                  0xFF3BBE3B),
                                                              size: 18.0,
                                                            ),
                                                          ),
                                                        if (stackAdministrativeRecord
                                                                .usernames
                                                                .contains(_model
                                                                    .usernameTextController
                                                                    .text) ??
                                                            true)
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1.0, 0.0),
                                                            child: Icon(
                                                              Icons
                                                                  .close_rounded,
                                                              color: Color(
                                                                  0xFFF83639),
                                                              size: 18.0,
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          40.0, 12.0, 40.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          if (_model.formKey2.currentState ==
                                                  null ||
                                              !_model.formKey2.currentState!
                                                  .validate()) {
                                            return;
                                          }
                                          if (_model.switchValue != true) {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text('Obrigatório.'),
                                                  content: Text(
                                                      'Você precisa aceitar os termos de condições.'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: Text('Ok'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                            return;
                                          }
                                          if (!columnAdministrativeRecord!
                                              .usernames
                                              .contains(_model
                                                  .usernameTextController
                                                  .text)) {
                                            if (_model.formKey1.currentState ==
                                                    null ||
                                                !_model.formKey1.currentState!
                                                    .validate()) {
                                              return;
                                            }

                                            await columnAdministrativeRecord
                                                .reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'usernames':
                                                      FieldValue.arrayUnion([
                                                    _model
                                                        .usernameTextController
                                                        .text
                                                  ]),
                                                },
                                              ),
                                            });

                                            await currentUserReference!
                                                .update(createUserRecordData(
                                              username: _model
                                                  .usernameTextController.text,
                                            ));

                                            context.goNamed(
                                                Cadastro1Widget.routeName);
                                          }
                                        },
                                        text: 'Próximo',
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 50.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Color(0xFF304E4F),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color: Colors.white,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                          elevation: 0.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  40.0, 145.0, 40.0, 0.0),
                              child: Text(
                                'DECLARO, para fins de direito, sob as penas da Lei, que as informações e documentos prestados que apresento para a inscrição de associado, são verdadeiros e autênticos (fiéis à verdade e condizentes com a realidade). Fico ciente por meio deste documento, que a falsidade dessa declaração configura crime previsto no art. 298 e 299 do Código Penal Brasileiro, passível de apuração na forma da lei.',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.openSans(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .cannadrop2D5152,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                45.0, 15.0, 45.0, 45.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Eu li e concordo com os termos e condições.',
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
                                        color: FlutterFlowTheme.of(context)
                                            .cannadrop2D5152,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Form(
                                  key: _model.formKey2,
                                  autovalidateMode: AutovalidateMode.always,
                                  child: Switch.adaptive(
                                    value: _model.switchValue!,
                                    onChanged: (newValue) async {
                                      safeSetState(
                                          () => _model.switchValue = newValue);
                                    },
                                    activeColor: Color(0xFF789B9C),
                                    activeTrackColor: Color(0xFF789B9C),
                                    inactiveTrackColor: Color(0xFFDADADA),
                                    inactiveThumbColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 0.5,
                    decoration: BoxDecoration(
                      color: Color(0xFFDADADA),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
