import 'package:flutter/foundation.dart';
import 'package:kaliam/models.dart';
import 'package:kaliam/src/models/login_info.dart';
import 'package:kalil_utils/utils.dart';
import 'package:value_listenables/value_listenables.dart';
import 'package:kaliam/services.dart';

enum WantedPage {
  home,
  login,
  loading,
}

class LoginController extends ControllerBase<LoginController> with Consumer {
  @override
  final List<Type> dependencies = const [IAuthenticationService];
  late final IAuthenticationService authenticationService = get();

  final EventNotifier<SignInInfo> _signInEvents = EventNotifier();
  final EventNotifier<SignUpInfo> _signUpEvents = EventNotifier();

  @override
  void init() {
    super.init();
    _signInEvents.castNotNull().tap(
          (info) => authenticationService.signInWithEmailAndPassword(
            info.email,
            info.password,
          ),
        );
    _signUpEvents.castNotNull().tap(
          (info) => authenticationService.signUpWithEmailAndPassword(
            info.email,
            info.password,
          ),
        );
  }

  late final ValueListenable<Loading<Identity>> _baseIdentity =
      authenticationService.identity;

  ValueListenable<Loading<Identity>> get identity => _baseIdentity.view();
  ValueListenable<AuthenticatedIdentity?> get authenticatedIdentity =>
      identity.map((loadingIdentity) => loadingIdentity.visit(
          notReady: () => null,
          ready: (identity) => identity is AuthenticatedIdentity
              ? identity //
              : null));

  ValueListenable<WantedPage> get wantedPage => identity.map(
        (loadingIdentity) => loadingIdentity.visit(
          notReady: () => WantedPage.loading,
          ready: (identity) => identity is AuthenticatedIdentity
              ? WantedPage.home
              : WantedPage.login,
        ),
      );

  late final signUp = _signUpEvents.add;
  late final signIn = _signInEvents.add;
}
