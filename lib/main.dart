import 'package:flutter/material.dart';
import 'day_7/http_api.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SafeArea(child: const HttpApi())),
    ),
  );
}


/*
void main() {
  runApp(
    MultiProvider(
      providers: [ // تحديد الـ Providers المستخدمة في التطبيق
        ChangeNotifierProvider(create: (_) => CounterProvider()), // توفير CounterProvider للتطبيق
        ChangeNotifierProvider(create: (_) => VisibilityProvider()), // توفير CounterProvider للتطبيق
        ChangeNotifierProvider(create: (_) => ScreenProvider()), // توفير CounterProvider للتطبيق
      ],
      child: ExampleTwo(), // التطبيق الرئيسي
    ),
  );
}*/
