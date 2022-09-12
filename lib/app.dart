import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:introduce/authentication/authentication.dart';
import 'package:introduce/home.dart';
import 'package:introduce/login/login.dart';
import 'package:introduce/view/loading_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthenticationBloc(),
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
    print(_navigatorKey);
    return MaterialApp(
      navigatorKey: _navigatorKey,
      builder: (context, child) {
        print('${child} childchildchildchildchild');
        return BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            // _navigator.pushAndRemoveUntil(LoginPage.route(), (route) => false);
          },
          child: child,
        );
        // return
      },
      onGenerateRoute: (_) => LoadingView.route(),
    );
  }
}
