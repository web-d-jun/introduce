import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:introduce/authentication/authentication.dart';
import 'package:introduce/home.dart';
import 'package:introduce/login/login.dart';
import 'package:introduce/view/loading_view.dart';

class App extends StatelessWidget {
  const App({super.key, required this.authenticationRepository});

  final AuthenticationRepository authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthenticationBloc(
        authenticationRepository: authenticationRepository,
      ),
      child: const AppView(),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState get _navigator => _navigatorKey.currentState!;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      builder: (context, child) {
        print('${child} childchildchildchildchild');
        return BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            print('${state} statestatestate');
            _navigator.pushAndRemoveUntil<void>(
                LoginPage.route(), (route) => false);
          },
          child: child,
        );
      },
      onGenerateRoute: (_) => LoadingView.route(),
    );
  }
}
