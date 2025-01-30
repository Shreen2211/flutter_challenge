import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    // الحصول على حجم الشاشة
    double screenWidth = MediaQuery.of(context).size.width; // عرض الشاشة
    double screenHeight = MediaQuery.of(context).size.height; // ارتفاع الشاشة
    double pixelDensity = MediaQuery.of(context).devicePixelRatio; // كثافة البيكسل
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait; // معرفة اتجاه الشاشة

    return Scaffold(
      appBar: AppBar(title: Text("MediaQuery Example")), // عنوان التطبيق
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // توسيط العناصر عموديًا
          children: [
            Text("📏 عرض الشاشة: $screenWidth", style: TextStyle(fontSize: 18)), // عرض الشاشة
            Text("📏 ارتفاع الشاشة: $screenHeight", style: TextStyle(fontSize: 18)), // ارتفاع الشاشة
            Text("🔢 كثافة البيكسل: $pixelDensity", style: TextStyle(fontSize: 18)), // كثافة البيكسل
            Text("📱 الاتجاه: ${isPortrait ? 'عمودي' : 'أفقي'}", style: TextStyle(fontSize: 18)), // وضع الجهاز
          ],
        ),
      ),
    );
  }
}
