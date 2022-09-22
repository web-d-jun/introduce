import 'package:flutter/material.dart';

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            // flexibleSpace: const FlexibleSpaceBar(
            //   title: Text('shopping'),
            //   background: FlutterLogo()
            // ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(45),
              child: Column(
                children: const <Widget>[
                  SizedBox(
                    height: 30,
                    child: Text("Shopping"),
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "검색창에서 검색해보세요.",
                          prefixIcon: Icon(Icons.search)),
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
