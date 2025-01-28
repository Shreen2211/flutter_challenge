import 'package:flutter/material.dart'; // استيراد مكتبة Flutter الأساسية
import 'package:flutter_challenge/day_3/provider_example_two.dart';
import 'package:provider/provider.dart'; // استيراد مكتبة Provider

// 1. كلاس لإدارة الحالة
class VisibilityProvider with ChangeNotifier {
  bool _isVisible = true; // الحالة الأولية: الرسالة مرئية

  bool get isVisible => _isVisible; // Getter عشان نرجّع قيمة الحالة

  void toggleVisibility() { // دالة لتبديل الحالة
    _isVisible = !_isVisible; // عكس القيمة الحالية
    notifyListeners(); // إعلام الـ Widgets بالتغيير
  }
}


// 2. التطبيق الرئيسي
class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // إزالة شريط Debug
      home: VisibilityScreen(), // الشاشة الرئيسية
    );
  }
}

// 3. شاشة إظهار/إخفاء الرسالة
class VisibilityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show/Hide Example'), // عنوان الشاشة
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // ترتيب العناصر في منتصف الشاشة
          children: [
            // 4. عرض الرسالة بناءً على الحالة
            Consumer<VisibilityProvider>(
              builder: (context, provider, child) {
                return provider.isVisible
                    ? Text(
                  'This is a visible message!', // الرسالة اللي بتظهر
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                )
                    : SizedBox(); // لو الرسالة مخفية، بنعرض Widget فارغ
              },
            ),
            SizedBox(height: 20), // مسافة بين العناصر
            ElevatedButton(
              onPressed: () {
                // استدعاء دالة toggleVisibility لتبديل الحالة
                context.read<VisibilityProvider>().toggleVisibility();
              },
              child: Text('Toggle Message'), // نص الزرار
            ),
            ElevatedButton(
              onPressed: () {
                // الرجوع للشاشة الأولى
                context.read<ScreenProvider>().goToScreen(0);
              },
              child: Text('Go to First Screen'), // نص الزرار
            ),
          ],
        ),
      ),
    );
  }
}
