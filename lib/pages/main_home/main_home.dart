import 'package:flutter/material.dart';
import 'package:introduce/search/search.dart';

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
                      Container(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.notifications_none_outlined),
                      )

                      // Expanded(child: Icon(Icons.notifications_none_outlined))
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const SearchPage()),
                        ),
                      );
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
              Container(child: Text("1")),
              Container(child: Text("2")),
              Container(child: Text("3")),
              Container(child: Text("4"))
            ]),
          ),
        ],
      ),
    );
  }
}
