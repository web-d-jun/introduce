import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introduce/authentication/authentication.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(builder: (_) => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            Builder(
              builder: (context) {
                final userId = context
                    .select((AuthenticationBloc bloc) => bloc.state.user.id);
                print(userId);
                return Text('userID $userId');
              },
            ),
            ElevatedButton(
                onPressed: () {
                  context
                      .read<AuthenticationBloc>()
                      .add(AuthenticationLogoutRequested());
                },
                child: const Text('Logout')),
          ],
        ),
      ),
    );
  }
}
