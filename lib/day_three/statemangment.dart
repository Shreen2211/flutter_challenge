import 'package:flutter/material.dart'; // استيراد مكتبة Flutter الأساسية
import 'package:provider/provider.dart'; // استيراد مكتبة Provider

// 1. تعريف كلاس لإدارة الحالة (State)
class CounterProvider with ChangeNotifier {
  int _counter = 0; // متغير خاص لتخزين قيمة العداد

  int get counter => _counter; // Getter عشان نرجّع قيمة العداد

  void increment() { // دالة لزيادة العداد
    _counter++; // زيادة قيمة العداد
    notifyListeners(); // إعلام الـ Widgets اللي بتسمع التغييرات (Rebuild)
  }
}

// 3. الكلاس الرئيسي للتطبيق
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // إزالة شريط Debug
      home: CounterScreen(), // الشاشة الرئيسية
    );
  }
}

// 4. شاشة العداد
class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // واجهة المستخدم
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App using Provider'), // عنوان التطبيق
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // محاذاة العناصر في منتصف الشاشة
          children: [
            Text(
              'You have pressed the button this many times:',
            ),
            // 5. عرض قيمة العداد باستخدام Consumer
            Consumer<CounterProvider>(
              builder: (context, provider, child) {
                return Text(
                  '${provider.counter}', // عرض قيمة العداد الحالية
                  style: TextStyle(fontSize: 40), // تنسيق النص
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // استدعاء دالة increment لزيادة العداد
          context.read<CounterProvider>().increment();
        },
        child: Icon(Icons.add), // أيقونة الزرار
      ),
    );
  }
}
