import 'package:flutter/material.dart';

class TweenAnimationExample extends StatefulWidget {
  const TweenAnimationExample({super.key});

  @override
  _TweenAnimationExampleState createState() => _TweenAnimationExampleState();
}

class _TweenAnimationExampleState extends State<TweenAnimationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller; // الكنترولر اللي بيدير الأنيميشن
  late Animation<double> _animation; // الأنيميشن نفسه

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2), // مدة الأنيميشن
      vsync: this, // بيوفر موارد الجهاز
    )..repeat(reverse: true); // يكرر الأنيميشن ويعكسه

    _animation = Tween<double>(begin: 50, end: 200).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose(); // لازم نعمل ديسبوز للكنترولر عشان توفير الموارد
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Container(
              width: _animation.value, // العرض بيتغير بالأنيميشن
              height: _animation.value, // الطول بيتغير بالأنيميشن
              color: Colors.blue,
            );
          },
        ),
      ),
    );
  }
}
