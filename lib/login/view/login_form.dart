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
        // print('${state} statestatestatestate');
      },
      child: Align(
        // alignment: const Alignment(0, y),
        child: Column(
          children: [
            _UsernameInput(),
          ],
        ),
      ),
    );
  }
}

class _UsernameInput extends StatelessWidget {
  const _UsernameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_usernameInput_textField'),
          onChanged: (username) =>
              context.read<LoginBloc>().add(LoginUsernameChanged(username)),
          decoration: InputDecoration(
              labelText: 'username',
              errorText: state.username.invalid ? 'invaild username' : null),
        );
      },
    );
  }
}
