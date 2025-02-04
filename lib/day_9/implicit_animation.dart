import 'package:flutter/material.dart';

class ImplicitAnimationExample extends StatefulWidget {
  @override
  _ImplicitAnimationExampleState createState() =>
      _ImplicitAnimationExampleState();
}

class _ImplicitAnimationExampleState extends State<ImplicitAnimationExample> {
  double _size = 100; // الحجم الابتدائي

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _size = _size == 100 ? 200 : 100; // يغير الحجم لما نضغط
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1), // مدة الأنيميشن
            curve: Curves.easeInOut, // شكل الحركة
            width: _size,
            height: _size,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}