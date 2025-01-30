import 'package:flutter/material.dart';

class ButtonsType extends StatefulWidget {
  const ButtonsType({super.key});

  @override
  State<ButtonsType> createState() => _ButtonsTypeState();
}

class _ButtonsTypeState extends State<ButtonsType> {
  @override
  Widget build(BuildContext context) {
    String selectedValue = 'One';

    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,
          children: [
            /*
                               متى تختار كل منهما؟
            اختر ElevatedButton إذا كنت تريد زرًا بارزًا يجذب الانتباه.
اختر TextButton إذا كنت تريد زرًا بسيطًا ضمن عناصر أخرى أقل بروزًا
            FloatingActionButton هو زر دائري رئيسي يستخدم للإجراءات المهمة في التطبيق، مثل إضافة عنصر جديد.
            DropdownButton يُستخدم لاختيار قيمة من مجموعة من الخيارات المعروضة في قائمة منسدلة.
            GestureDetector يُستخدم لاكتشاف مجموعة متنوعة من الإيماءات التي يقوم بها المستخدم، مثل النقر أو السحب أو الضغط المطول.
            OutlinedButton: مناسب إذا كنت تحتاج إلى إبراز خيار مع حواف واضحة دون استخدام خلفية بارزة.
            */
            TextButton(
              //الدالة التي يتم استدعاؤها عند الضغط على الزر.
              onPressed: () {
                print('Button Pressed');
              },
              //الدالة التي يتم استدعاؤها عند الضغط المطول على الزر.
              onLongPress: () {
                print('Long Pressed');
              },
              //لتخصيص مظهر الزر باستخدام .
              style: ButtonStyle(
                //لون النص أو الأيقونات.
                foregroundColor: WidgetStateProperty.all(Colors.blue),
                //لون الخلفية
                backgroundColor: WidgetStateProperty.all(Colors.grey[200]),
                //لون التاثير عند الضغط
                overlayColor: WidgetStateProperty.all(
                  Colors.blue.withValues(alpha: 0.1),
                ),
                //المسافة الداخلية
                padding: WidgetStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              //تحدد كيف يتم قص أي محتوى يخرج خارج حدود الزر.
              clipBehavior: Clip.antiAlias,
              //إذا كانت قيمته true، يحصل الزر على التركيز تلقائيًا عند تحميل الشاشة.
              autofocus: true,
              child: Text('Click Me'),
            ),

            ElevatedButton(
              onPressed: () {
                print('Button Pressed');
              },
              onLongPress: () {
                print('Long Pressed');
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.blue),
                foregroundColor: WidgetStateProperty.all(Colors.white),
                overlayColor: WidgetStateProperty.all(
                  Colors.blue.withValues(alpha: 0.2),
                ),
                elevation: WidgetStateProperty.all(8),
                padding: WidgetStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              child: Text('Click Me'),
            ),
            OutlinedButton(
              onPressed: () {
                print('OutlinedButton Pressed');
              },
              onLongPress: () {
                print('OutlinedButton Long Pressed');
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.blue,
                // لون النص
                backgroundColor: Colors.white,
                // لون الخلفية
                side: BorderSide(color: Colors.blue, width: 2),
                // إعدادات الحواف
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                // الحشو
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // شكل الحواف
                ),
              ),
              child: Text('Outlined Button'),
            ),

            IconButton(
              onPressed: () {
                print('IconButton Pressed');
              },
              icon: Icon(Icons.favorite),
              color: Colors.red,
              iconSize: 30.0,
              tooltip: 'Like',
              splashColor: Colors.redAccent,
              padding: EdgeInsets.all(12.0),
            ),

            FloatingActionButton(
              onPressed: () {
                print("FAB Pressed");
              },
              backgroundColor: Colors.green,
              elevation: 6.0,
              mini: false,
              child: Icon(Icons.add),
            ),

            DropdownButton<String>(
              value: selectedValue,
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue!;
                });
              },
              items:
                  <String>['One', 'Two', 'Three'].map<DropdownMenuItem<String>>(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    },
                  ).toList(),
            ),

            GestureDetector(
              onTap: () {
                print("Tapped");
              },
              onLongPress: () {
                print("Long Pressed");
              },
              onVerticalDragUpdate: (details) {
                print("Dragging vertically");
              },
              child: Container(
                color: Colors.blue,
                width: 100,
                height: 100,
                child: Center(child: Text("Gesture Me")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
