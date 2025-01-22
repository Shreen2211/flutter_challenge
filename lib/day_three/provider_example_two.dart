import 'package:flutter/material.dart'; // استيراد مكتبة Flutter الأساسية
import 'package:flutter_challenge/day_three/provider_example.dart';
import 'package:provider/provider.dart'; // استيراد مكتبة Provider

// 1. كلاس لإدارة الحالة
class ScreenProvider with ChangeNotifier {
  int _currentScreen = 0; // الحالة الأولية: الشاشة رقم 0

  int get currentScreen => _currentScreen; // Getter للشاشة الحالية

  void goToScreen(int screenIndex) { // دالة لتغيير الشاشة
    _currentScreen = screenIndex; // تحديث الحالة للشاشة الجديدة
    notifyListeners(); // إعلام الـ Widgets بالتغيير
  }
}



// 2. التطبيق الرئيسي
class ExampleTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // إزالة شريط Debug
      home: MainScreen(), // الشاشة الرئيسية
    );
  }
}

// 3. الشاشة الرئيسية
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Example'), // عنوان التطبيق
      ),
      body: Consumer<ScreenProvider>(
        builder: (context, provider, child) {
          // تحديد الشاشة الحالية بناءً على الحالة
          return provider.currentScreen == 0 ? FirstScreen() : Example();
        },
      ),
    );
  }
}

// 4. الشاشة الأولى
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // ترتيب العناصر في منتصف الشاشة
        children: [
          Text(
            'This is the First Screen', // نص الشاشة الأولى
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
          SizedBox(height: 20), // مسافة بين العناصر
          ElevatedButton(
            onPressed: () {
              // التنقل للشاشة الثانية
              context.read<ScreenProvider>().goToScreen(1);
            },
            child: Text('Go to Second Screen'), // نص الزرار
          ),
        ],
      ),
    );
  }
}

// 5. الشاشة الثانية
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // ترتيب العناصر في منتصف الشاشة
        children: [
          Text(
            'This is the Second Screen', // نص الشاشة الثانية
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
          SizedBox(height: 20), // مسافة بين العناصر
          ElevatedButton(
            onPressed: () {
              // الرجوع للشاشة الأولى
              context.read<ScreenProvider>().goToScreen(0);
            },
            child: Text('Go to First Screen'), // نص الزرار
          ),
        ],
      ),
    );
  }
}
