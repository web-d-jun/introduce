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
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return Scaffold(
        body: Container(
          child: _widgetOptions.elementAt(state.selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "카테고리"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "검색"),
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "쿠팡홈"),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "마이쿠팡"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "장바구니")
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
