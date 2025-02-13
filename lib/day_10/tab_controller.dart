import 'package:flutter/material.dart';

class TabControllerType extends StatefulWidget {
  const TabControllerType({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TabControllerTypeState createState() => _TabControllerTypeState();
}

class _TabControllerTypeState extends State<TabControllerType>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar with Controller'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.home), text: "الرئيسية"),
            Tab(icon: Icon(Icons.star), text: "المفضلة"),
            Tab(icon: Icon(Icons.settings), text: "الإعدادات"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text("صفحة الرئيسية")),
          Center(child: Text("صفحة المفضلة")),
          Center(child: Text("صفحة الإعدادات")),
        ],
      ),
    );
  }
}
