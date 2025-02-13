import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/day_10/tab_bar.dart';
import 'package:flutter_challenge/day_10/bottom_navigation_bar.dart' as custom;

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) {
        // استخدم DevicePreview.appBuilder في البيلدر لتحديد التطبيق الذي سيتم تشغيله
        return DevicePreview.appBuilder(
          context,
          MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: SafeArea(child: const custom.BottomNavigationBarType()),
            ),
          ),
        );
      },
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
