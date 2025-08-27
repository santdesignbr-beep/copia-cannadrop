import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'navbarpacientes_colab_model.dart';
export 'navbarpacientes_colab_model.dart';

class NavbarpacientesColabWidget extends StatefulWidget {
  const NavbarpacientesColabWidget({super.key});

  @override
  State<NavbarpacientesColabWidget> createState() =>
      _NavbarpacientesColabWidgetState();
}

class _NavbarpacientesColabWidgetState
    extends State<NavbarpacientesColabWidget> {
  late NavbarpacientesColabModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarpacientesColabModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1024.0,
      height: 80.0,
      decoration: BoxDecoration(
        color: Color(0x00EEEEEE),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 70.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF2E4B4C),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10.0,
                        color: Color(0x1A57636C),
                        offset: Offset(
                          0.0,
                          -10.0,
                        ),
                        spreadRadius: 0.1,
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 50.0,
                icon: FaIcon(
                  FontAwesomeIcons.userAlt,
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  size: 20.0,
                ),
                onPressed: () async {
                  context.pushNamed(
                    ProfilepacienteWidget.routeName,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.bottomToTop,
                      ),
                    },
                  );
                },
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: FlutterFlowIconButton(
                      borderColor: Color(0xFF2E4B4C),
                      borderRadius: 25.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                      icon: FaIcon(
                        FontAwesomeIcons.home,
                        color: Color(0xFF2E4B4C),
                        size: 28.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(FeedWidget.routeName);
                      },
                    ),
                  ),
                ],
              ),
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 50.0,
                icon: FaIcon(
                  FontAwesomeIcons.cog,
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  size: 20.0,
                ),
                onPressed: () async {
                  context.pushNamed(ConfigperfilpacienteWidget.routeName);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
