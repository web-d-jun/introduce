import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introduce/login/bloc/login_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Column(
    //     children: [Text("data")],
    //   ),
    // );
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        print('${state} statestatestatestate');
      },
      child: Align(
        // alignment: const Alignment(0, y),
        child: Column(
          children: [Text("data")],
        ),
      ),
    );
  }
}
