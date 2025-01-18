import 'package:flutter/material.dart';

import 'day_one/login_screen.dart';
import 'day_one/text_form_field.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SafeArea(child: const LoginScreen())),
    ),
  );
}
