import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? LoginWidget() : InicioWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? LoginWidget() : InicioWidget(),
          routes: [
            FFRoute(
              name: InicioWidget.routeName,
              path: InicioWidget.routePath,
              builder: (context, params) => InicioWidget(),
            ),
            FFRoute(
              name: FeedWidget.routeName,
              path: FeedWidget.routePath,
              asyncParams: {
                'posts': getDoc(['posts'], PostsRecord.fromSnapshot),
              },
              builder: (context, params) => FeedWidget(
                posts: params.getParam(
                  'posts',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: AgendamentoWidget.routeName,
              path: AgendamentoWidget.routePath,
              builder: (context, params) => AgendamentoWidget(),
            ),
            FFRoute(
              name: LoginCadastroWidget.routeName,
              path: LoginCadastroWidget.routePath,
              builder: (context, params) => LoginCadastroWidget(),
            ),
            FFRoute(
              name: ConfigperfilmedicoWidget.routeName,
              path: ConfigperfilmedicoWidget.routePath,
              builder: (context, params) => ConfigperfilmedicoWidget(),
            ),
            FFRoute(
              name: ProfilemedicoWidget.routeName,
              path: ProfilemedicoWidget.routePath,
              builder: (context, params) => ProfilemedicoWidget(),
            ),
            FFRoute(
              name: DetalheconsultaWidget.routeName,
              path: DetalheconsultaWidget.routePath,
              builder: (context, params) => DetalheconsultaWidget(
                consultadetalhe: params.getParam(
                  'consultadetalhe',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['Consulta'],
                ),
              ),
            ),
            FFRoute(
              name: ProtocoloconsultaWidget.routeName,
              path: ProtocoloconsultaWidget.routePath,
              builder: (context, params) => ProtocoloconsultaWidget(),
            ),
            FFRoute(
              name: CriartratamentoWidget.routeName,
              path: CriartratamentoWidget.routePath,
              builder: (context, params) => CriartratamentoWidget(),
            ),
            FFRoute(
              name: CadastroassociadosWidget.routeName,
              path: CadastroassociadosWidget.routePath,
              builder: (context, params) => CadastroassociadosWidget(),
            ),
            FFRoute(
              name: CadastromenorWidget.routeName,
              path: CadastromenorWidget.routePath,
              builder: (context, params) => CadastromenorWidget(),
            ),
            FFRoute(
              name: EditarperfilpacienteWidget.routeName,
              path: EditarperfilpacienteWidget.routePath,
              builder: (context, params) => EditarperfilpacienteWidget(),
            ),
            FFRoute(
              name: EditarperfilmedicoWidget.routeName,
              path: EditarperfilmedicoWidget.routePath,
              builder: (context, params) => EditarperfilmedicoWidget(),
            ),
            FFRoute(
              name: ConfigperfilpacienteWidget.routeName,
              path: ConfigperfilpacienteWidget.routePath,
              builder: (context, params) => ConfigperfilpacienteWidget(),
            ),
            FFRoute(
              name: ConfigperfilcolaboradorWidget.routeName,
              path: ConfigperfilcolaboradorWidget.routePath,
              builder: (context, params) => ConfigperfilcolaboradorWidget(),
            ),
            FFRoute(
              name: DetalhestratamentoWidget.routeName,
              path: DetalhestratamentoWidget.routePath,
              builder: (context, params) => DetalhestratamentoWidget(
                tratamento: params.getParam(
                  'tratamento',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['Tratamento'],
                ),
              ),
            ),
            FFRoute(
              name: PoscadastropacienteWidget.routeName,
              path: PoscadastropacienteWidget.routePath,
              builder: (context, params) => PoscadastropacienteWidget(),
            ),
            FFRoute(
              name: CadastrocolaboradorWidget.routeName,
              path: CadastrocolaboradorWidget.routePath,
              builder: (context, params) => CadastrocolaboradorWidget(),
            ),
            FFRoute(
              name: Cadastropaciente2Widget.routeName,
              path: Cadastropaciente2Widget.routePath,
              builder: (context, params) => Cadastropaciente2Widget(),
            ),
            FFRoute(
              name: LoginWidget.routeName,
              path: LoginWidget.routePath,
              builder: (context, params) => LoginWidget(),
            ),
            FFRoute(
              name: Cadastro1Widget.routeName,
              path: Cadastro1Widget.routePath,
              builder: (context, params) => Cadastro1Widget(),
            ),
            FFRoute(
              name: AutorizacaojudicialWidget.routeName,
              path: AutorizacaojudicialWidget.routePath,
              builder: (context, params) => AutorizacaojudicialWidget(),
            ),
            FFRoute(
              name: TermoLGPDWidget.routeName,
              path: TermoLGPDWidget.routePath,
              builder: (context, params) => TermoLGPDWidget(),
            ),
            FFRoute(
              name: DadospessoaisWidget.routeName,
              path: DadospessoaisWidget.routePath,
              builder: (context, params) => DadospessoaisWidget(),
            ),
            FFRoute(
              name: PerfilpacienteWidget.routeName,
              path: PerfilpacienteWidget.routePath,
              builder: (context, params) => PerfilpacienteWidget(
                perfilpaciente: params.getParam(
                  'perfilpaciente',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['user'],
                ),
              ),
            ),
            FFRoute(
              name: PerfilcolaboradorWidget.routeName,
              path: PerfilcolaboradorWidget.routePath,
              builder: (context, params) => PerfilcolaboradorWidget(
                userperfilcolab: params.getParam(
                  'userperfilcolab',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['user'],
                ),
              ),
            ),
            FFRoute(
              name: ProfilepacienteWidget.routeName,
              path: ProfilepacienteWidget.routePath,
              builder: (context, params) => ProfilepacienteWidget(),
            ),
            FFRoute(
              name: ProfilecolaboradorWidget.routeName,
              path: ProfilecolaboradorWidget.routePath,
              builder: (context, params) => ProfilecolaboradorWidget(),
            ),
            FFRoute(
              name: DocumentosWidget.routeName,
              path: DocumentosWidget.routePath,
              builder: (context, params) => DocumentosWidget(),
            ),
            FFRoute(
              name: CriaragendamentoWidget.routeName,
              path: CriaragendamentoWidget.routePath,
              builder: (context, params) => CriaragendamentoWidget(),
            ),
            FFRoute(
              name: SucesscadastroWidget.routeName,
              path: SucesscadastroWidget.routePath,
              builder: (context, params) => SucesscadastroWidget(),
            ),
            FFRoute(
              name: MeusdependentesWidget.routeName,
              path: MeusdependentesWidget.routePath,
              builder: (context, params) => MeusdependentesWidget(),
            ),
            FFRoute(
              name: MainWidget.routeName,
              path: MainWidget.routePath,
              builder: (context, params) => MainWidget(),
            ),
            FFRoute(
              name: AgendamentocriarWidget.routeName,
              path: AgendamentocriarWidget.routePath,
              builder: (context, params) => AgendamentocriarWidget(),
            ),
            FFRoute(
              name: DetalheagendamentoWidget.routeName,
              path: DetalheagendamentoWidget.routePath,
              builder: (context, params) => DetalheagendamentoWidget(
                detalheagendamento: params.getParam(
                  'detalheagendamento',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['Agendamento'],
                ),
              ),
            ),
            FFRoute(
              name: AgendamentomostrarWidget.routeName,
              path: AgendamentomostrarWidget.routePath,
              builder: (context, params) => AgendamentomostrarWidget(
                previewagendamento: params.getParam(
                  'previewagendamento',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['Agendamento'],
                ),
              ),
            ),
            FFRoute(
              name: DadospessoaismenorWidget.routeName,
              path: DadospessoaismenorWidget.routePath,
              builder: (context, params) => DadospessoaismenorWidget(
                menoruser: params.getParam(
                  'menoruser',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['Menor'],
                ),
              ),
            ),
            FFRoute(
              name: PreviewdadoscolabWidget.routeName,
              path: PreviewdadoscolabWidget.routePath,
              builder: (context, params) => PreviewdadoscolabWidget(
                user: params.getParam(
                  'user',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['user'],
                ),
              ),
            ),
            FFRoute(
              name: ProfilepacienteCopyWidget.routeName,
              path: ProfilepacienteCopyWidget.routePath,
              builder: (context, params) => ProfilepacienteCopyWidget(),
            ),
            FFRoute(
              name: ChatWidget.routeName,
              path: ChatWidget.routePath,
              asyncParams: {
                'chatUser': getDoc(['user'], UserRecord.fromSnapshot),
              },
              builder: (context, params) => ChatWidget(
                chatUser: params.getParam(
                  'chatUser',
                  ParamType.Document,
                ),
                chatRef: params.getParam(
                  'chatRef',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['chats'],
                ),
              ),
            ),
            FFRoute(
              name: AllChatsWidget.routeName,
              path: AllChatsWidget.routePath,
              builder: (context, params) => AllChatsWidget(),
            ),
            FFRoute(
              name: BuscarUserWidget.routeName,
              path: BuscarUserWidget.routePath,
              builder: (context, params) => BuscarUserWidget(),
            ),
            FFRoute(
              name: AlterarsenhaWidget.routeName,
              path: AlterarsenhaWidget.routePath,
              builder: (context, params) => AlterarsenhaWidget(),
            ),
            FFRoute(
              name: PinCodeCadastroWidget.routeName,
              path: PinCodeCadastroWidget.routePath,
              builder: (context, params) => PinCodeCadastroWidget(),
            ),
            FFRoute(
              name: NotificacaoWidget.routeName,
              path: NotificacaoWidget.routePath,
              builder: (context, params) => NotificacaoWidget(),
            ),
            FFRoute(
              name: SignUpUsernameWidget.routeName,
              path: SignUpUsernameWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SignUpUsernameWidget(),
            ),
            FFRoute(
              name: ComentariosWidget.routeName,
              path: ComentariosWidget.routePath,
              builder: (context, params) => ComentariosWidget(
                post: params.getParam(
                  'post',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['posts'],
                ),
              ),
            ),
            FFRoute(
              name: DoacaoWidget.routeName,
              path: DoacaoWidget.routePath,
              builder: (context, params) => DoacaoWidget(),
            ),
            FFRoute(
              name: SaibamaisWidget.routeName,
              path: SaibamaisWidget.routePath,
              builder: (context, params) => SaibamaisWidget(),
            ),
            FFRoute(
              name: DownloadappWidget.routeName,
              path: DownloadappWidget.routePath,
              builder: (context, params) => DownloadappWidget(),
            ),
            FFRoute(
              name: MaindropWidget.routeName,
              path: MaindropWidget.routePath,
              builder: (context, params) => MaindropWidget(),
            ),
            FFRoute(
              name: ContatoWidget.routeName,
              path: ContatoWidget.routePath,
              builder: (context, params) => ContatoWidget(),
            ),
            FFRoute(
              name: AdminWidget.routeName,
              path: AdminWidget.routePath,
              builder: (context, params) => AdminWidget(),
            ),
            FFRoute(
              name: WebFlow04Widget.routeName,
              path: WebFlow04Widget.routePath,
              builder: (context, params) => WebFlow04Widget(),
            ),
            FFRoute(
              name: WebFlow01Widget.routeName,
              path: WebFlow01Widget.routePath,
              builder: (context, params) => WebFlow01Widget(),
            ),
            FFRoute(
              name: WebFlow02Widget.routeName,
              path: WebFlow02Widget.routePath,
              builder: (context, params) => WebFlow02Widget(),
            ),
            FFRoute(
              name: WebFlow03Widget.routeName,
              path: WebFlow03Widget.routePath,
              builder: (context, params) => WebFlow03Widget(),
            ),
            FFRoute(
              name: DocumentospostWidget.routeName,
              path: DocumentospostWidget.routePath,
              builder: (context, params) => DocumentospostWidget(),
            ),
            FFRoute(
              name: ConsultaAcolhedorWidget.routeName,
              path: ConsultaAcolhedorWidget.routePath,
              builder: (context, params) => ConsultaAcolhedorWidget(
                consulta: params.getParam(
                  'consulta',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['consulta_acolhedor'],
                ),
              ),
            ),
            FFRoute(
              name: ConsultaMeuspacientesWidget.routeName,
              path: ConsultaMeuspacientesWidget.routePath,
              builder: (context, params) => ConsultaMeuspacientesWidget(
                consultapaciente: params.getParam(
                  'consultapaciente',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['consulta_paciente'],
                ),
              ),
            ),
            FFRoute(
              name: MeuspacientesWidget.routeName,
              path: MeuspacientesWidget.routePath,
              builder: (context, params) => MeuspacientesWidget(),
            ),
            FFRoute(
              name: RedecannadropoldWidget.routeName,
              path: RedecannadropoldWidget.routePath,
              builder: (context, params) => RedecannadropoldWidget(),
            ),
            FFRoute(
              name: FasdasWidget.routeName,
              path: FasdasWidget.routePath,
              builder: (context, params) => FasdasWidget(),
            ),
            FFRoute(
              name: DetalhesredecannadropcolabWidget.routeName,
              path: DetalhesredecannadropcolabWidget.routePath,
              builder: (context, params) => DetalhesredecannadropcolabWidget(
                rede: params.getParam(
                  'rede',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['RedeCannadrop'],
                ),
                useridrede: params.getParam(
                  'useridrede',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['user'],
                ),
              ),
            ),
            FFRoute(
              name: DocumenWidget.routeName,
              path: DocumenWidget.routePath,
              asyncParams: {
                'docs': getDoc(['documentos'], DocumentosRecord.fromSnapshot),
              },
              builder: (context, params) => DocumenWidget(
                docs: params.getParam(
                  'docs',
                  ParamType.Document,
                ),
                docuser: params.getParam(
                  'docuser',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['user'],
                ),
              ),
            ),
            FFRoute(
              name: HomePageWidget.routeName,
              path: HomePageWidget.routePath,
              builder: (context, params) => HomePageWidget(),
            ),
            FFRoute(
              name: RedecannadropWidget.routeName,
              path: RedecannadropWidget.routePath,
              builder: (context, params) => RedecannadropWidget(),
            ),
            FFRoute(
              name: DetalhesredecannadropWidget.routeName,
              path: DetalhesredecannadropWidget.routePath,
              builder: (context, params) => DetalhesredecannadropWidget(
                rede: params.getParam(
                  'rede',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['RedeCannadrop'],
                ),
                useridrede: params.getParam(
                  'useridrede',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['user'],
                ),
              ),
            ),
            FFRoute(
              name: ComoestoumesentindoWidget.routeName,
              path: ComoestoumesentindoWidget.routePath,
              builder: (context, params) => ComoestoumesentindoWidget(),
            ),
            FFRoute(
              name: AquisooquequeroWidget.routeName,
              path: AquisooquequeroWidget.routePath,
              builder: (context, params) => AquisooquequeroWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/inicio';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/DO_ROSA_MOCKUP_2.jpg',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
