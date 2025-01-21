import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'day_one/login_screen.dart';
import 'day_one/text_form_field.dart';
import 'day_three/statemangment.dart';
import 'day_two/buttons.dart';

/*
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SafeArea(child: const ButtonsType())),
    ),
  );
}
*/


void main() {
  runApp(
    MultiProvider(
      providers: [ // تحديد الـ Providers المستخدمة في التطبيق
        ChangeNotifierProvider(create: (_) => CounterProvider()), // توفير CounterProvider للتطبيق
      ],
      child: MyApp(), // التطبيق الرئيسي
    ),
  );
}