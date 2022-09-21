import 'package:flutter/material.dart';

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: false,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('scroll bar'),
              background: FlutterLogo(),
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
