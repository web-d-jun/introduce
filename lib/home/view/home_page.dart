import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introduce/authentication/authentication.dart';
import 'package:introduce/home/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(builder: (_) => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => HomeBloc(),
        child: const HomePageView(),
      ),
    );
  }
}

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return Scaffold(
        body: Container(
          child: Text('data'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home")
          ],
          currentIndex: state.selectedIndex,
          onTap: (index) => context.read<HomeBloc>().add(HomeItemTapped(index)),
        ),
      );
    });
  }
}

// Center(
//         child: Column(
//           children: [
//             Builder(
//               builder: (context) {
//                 final userId = context.select((AuthenticationBloc bloc) => bloc.state.user.id);
//                 print('$context zzzzz');
//                 print(userId);
//                 return Text('userID $userId');
//               },
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   context.read<AuthenticationBloc>().add(AuthenticationLogoutRequested());
//                 },
//                 child: const Text('Logout')),
//           ],
//         ),
//       ),
