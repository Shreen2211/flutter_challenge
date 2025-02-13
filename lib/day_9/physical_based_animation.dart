import 'package:flutter/material.dart';

class PhysicsAnimationExample extends StatefulWidget {
  const PhysicsAnimationExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PhysicsAnimationExampleState createState() =>
      _PhysicsAnimationExampleState();
}

class _PhysicsAnimationExampleState extends State<PhysicsAnimationExample> {
  double _x = 50; // المكان الابتدائي

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _x = _x == 50 ? 250 : 50; // يحرك العنصر عند الضغط
            });
          },
          child: AnimatedPositioned(
            duration: Duration(seconds: 1),
            curve: Curves.bounceOut, // تأثير ارتدادي في الحركة
            left: _x,
            child: Container(width: 100, height: 100, color: Colors.purple),
          ),
        ),
      ),
    );
  }
}
