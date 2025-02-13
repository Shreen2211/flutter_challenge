import 'package:flutter/material.dart';

class BottomNavigationBarType extends StatelessWidget {
  const BottomNavigationBarType({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(
            children: [
              Center(child: Text("الصفحة الرئيسية")),
              Center(child: Text("المفضلة")),
              Center(child: Text("الإعدادات")),
            ],
          ),
          bottomNavigationBar: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blue,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "الرئيسية"),
              Tab(icon: Icon(Icons.star), text: "المفضلة"),
              Tab(icon: Icon(Icons.settings), text: "الإعدادات"),
            ],
          ),
        ),
      ),
    );
  }
}
