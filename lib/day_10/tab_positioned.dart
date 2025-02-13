import 'package:flutter/material.dart';

class TabBarPositioned extends StatelessWidget {
  const TabBarPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Stack(
            children: [
              TabBarView(
                children: [
                  Center(child: Text("صفحة الرئيسية")),
                  Center(child: Text("صفحة المفضلة")),
                  Center(child: Text("صفحة الإعدادات")),
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.blue,
                  child: TabBar(
                    labelColor: Colors.white,
                    indicatorColor: Colors.yellow,
                    tabs: [
                      Tab(icon: Icon(Icons.home), text: "الرئيسية"),
                      Tab(icon: Icon(Icons.star), text: "المفضلة"),
                      Tab(icon: Icon(Icons.settings), text: "الإعدادات"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
