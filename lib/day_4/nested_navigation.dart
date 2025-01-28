import 'package:flutter/material.dart';


class NestedNavigation extends StatefulWidget {
  const NestedNavigation({super.key});

  @override
  State<NestedNavigation> createState() => _MainScreenState();
}

class _MainScreenState extends State<NestedNavigation> {
  int _currentIndex = 0;
  final List<Widget> _tabs = [
    NavigatorTab(tabName: 'Home'),
    NavigatorTab(tabName: 'Search'),
    NavigatorTab(tabName: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class NavigatorTab extends StatelessWidget {
  final String tabName;

  const NavigatorTab({required this.tabName});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => TabScreen(tabName: tabName),
        );
      },
    );
  }
}

class TabScreen extends StatelessWidget {
  final String tabName;

  const TabScreen({required this.tabName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$tabName Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(),
              ),
            );
          },
          child: Text('Go to Details from $tabName'),
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back'),
        ),
      ),
    );
  }
}
