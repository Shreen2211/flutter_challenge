import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'day_9/animation_tween.dart';


void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) {
        // استخدم DevicePreview.appBuilder في البيلدر
        return DevicePreview.appBuilder(
          context,
          MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(body: SafeArea(child: const TweenAnimationExample())),
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
