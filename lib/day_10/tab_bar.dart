import 'package:flutter/material.dart';

class TabBarType extends StatelessWidget {
  const TabBarType({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // عدد التابات
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar Example'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: "الرئيسية"),
                Tab(icon: Icon(Icons.star), text: "المفضلة"),
                Tab(icon: Icon(Icons.settings), text: "الإعدادات"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text("صفحة الرئيسية")),
              Center(child: Text("صفحة المفضلة")),
              Center(child: Text("صفحة الإعدادات")),
            ],
          ),
        ),
      ),
    );
  }
}
