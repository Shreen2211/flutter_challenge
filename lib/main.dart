import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'day_five/type_boxes.dart';
import 'day_four/declarative_navigation.dart';
import 'day_four/imperative_navigation.dart';
import 'day_one/login_screen.dart';
import 'day_one/text_form_field.dart';
import 'day_six/lists_type.dart';
import 'day_three/provider_example.dart';
import 'day_three/provider_example_two.dart';
import 'day_three/statemangment.dart';
import 'day_two/buttons.dart';

void main() {
  runApp(
    ListsType(),
    /*MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SafeArea(child: const NavigationLearn())),
    ),*/
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
