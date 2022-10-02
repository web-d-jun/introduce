import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introduce/search/search.dart';
import 'package:introduce/pages/main_home/main_home.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
            create: (context) => MainHomeBloc()..add(Init()),
            child: BlocBuilder<MainHomeBloc, MainHomeState>(
              builder: (context, state) {
                print('get data ${state.imgData.imgList}');
                return CustomScrollView(
                  slivers: <Widget>[
                    SliverAppBar(
                      pinned: false,
                      backgroundColor: Colors.white,
                      // flexibleSpace: const FlexibleSpaceBar(
                      //   title: Text('shopping'),
                      //   background: FlutterLogo()
                      // ),
                      bottom: PreferredSize(
                        preferredSize: Size.fromHeight(45),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  child: const Image(
                                    image: AssetImage('asset/images/logo.png'),
                                    width: 120,
                                  ),
                                ),
                                // Container(
                                //   alignment: Alignment.centerRight,
                                //   child: const Icon(Icons.notifications_none_outlined),
                                // )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(_createRoute());
                              },
                              child: Container(
                                height: 40,
                                padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black54),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(5.0),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                                        child: const Icon(
                                          Icons.search,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      const Text(
                                        "여기서 검색하세요!",
                                        style: TextStyle(fontSize: 17.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate([
                        Container(
                          color: Colors.black54,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    color: Colors.white,
                                    child: CarouselSliderWidget(imgList: state.imgData.imgList),
                                  )
                                ],
                              ),
                              Container(child: Text("2")),
                              Container(child: Text("3")),
                              Container(child: Text("4"))
                            ],
                          ),
                        )
                      ]),
                    ),
                  ],
                );
              },
            )));
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const SearchPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = const Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
