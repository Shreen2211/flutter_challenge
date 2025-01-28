import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DeclarativeNavigation extends StatelessWidget {
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: '/details',
        builder: (context, state) => DetailsScreen(),
      ),
    ],
  );

  DeclarativeNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.push('/details'); // تنقل لشاشة التفاصيل
          },
          child: Text('Go to Details'),
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
            context.pop(); // رجوع للشاشة السابقة
          },
          child: Text('Back to Home'),
        ),
      ),
    );
  }
}
