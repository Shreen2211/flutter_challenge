import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // استخدام LayoutBuilder لمعرفة عرض الشاشة
    return LayoutBuilder(
      builder: (context, constraints) {
        // إذا كان العرض أقل من 600، اعتبرها شاشة موبايل
        bool isMobile = constraints.maxWidth < 600;

        return Scaffold(
          appBar: AppBar(
            title: Text("Responsive Design"), // عنوان التطبيق
          ),
          body: Center(
            child: Container(
              width: isMobile ? 200 : 400, // تغيير العرض بناءً على حجم الشاشة
              height: isMobile ? 200 : 400, // تغيير الطول بناءً على حجم الشاشة
              color: isMobile ? Colors.blue : Colors.green, // تغيير اللون بناءً على حجم الشاشة
              child: Center(
                child: Text(
                  isMobile ? "موبايل 📱" : "تابلت / كمبيوتر 💻", // تغيير النص بناءً على الحجم
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
