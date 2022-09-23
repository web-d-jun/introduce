import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // titleSpacing: -5,
        // leadingWidth: 20,
        iconTheme: const IconThemeData(
          color: Colors.black54,
        ),
        title: Row(
          children: [
            Container(
              width: 40,
              padding: const EdgeInsets.all(1),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black54),
              ),
            ),
            Expanded(
              child: Container(
                height: 30,
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "검색어 입력",
                  ),
                ),
              ),
            ),
            Container(
              width: 40,
              padding: const EdgeInsets.all(1),
              child: IconButton(onPressed: () => print("object"), icon: Icon(Icons.search)),
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: const Center(
        child: Text("search body"),
      ),
    );
  }
}
