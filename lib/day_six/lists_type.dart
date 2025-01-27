import 'package:flutter/material.dart';

class ListsType extends StatelessWidget {
  const ListsType({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('أنواع القوائم في Flutter'),
        ),
        body: SingleChildScrollView( // للسماح بتمرير الصفحة بالكامل
          child: Container(
            margin: EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. ListView
                sectionTitle('1. ListView (عادية)'),
                SizedBox(
                  height: 150, // تحديد ارتفاع القائمة
                  child: ListView(
                    children: [
                      Text('Item 1'), // عنصر ثابت
                      Text('Item 2'),
                      Text('Item 3'),
                    ],
                  ),
                ),
            
                // 2. ListView.builder
                sectionTitle('2. ListView.builder (ديناميكية)'),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: 5, // عدد العناصر
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('Item $index'), // نص العنصر مع رقم الفهرس
                      );
                    },
                  ),
                ),
            
                // 3. ListView.separated
                sectionTitle('3. ListView.separated (بفواصل)'),
                SizedBox(
                  height: 150,
                  child: ListView.separated(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('Item $index'),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(); // الفاصل بين العناصر
                    },
                  ),
                ),
            
                // 4. GridView.count
                sectionTitle('4. GridView.count (شبكة بعدد أعمدة ثابت)'),
                SizedBox(
                  height: 200,
                  child: GridView.count(
                    crossAxisCount: 2, // عدد الأعمدة
                    children: [
                      Text('Item 1'),
                      Text('Item 2'),
                      Text('Item 3'),
                      Text('Item 4'),
                    ],
                  ),
                ),
            
                // 5. PageView
                sectionTitle('5. PageView (عرض صفحات)'),
                SizedBox(
                  height: 200,
                  child: PageView(
                    children: [
                      Container(color: Colors.red, child: Center(child: Text('Page 1'))),
                      Container(color: Colors.green, child: Center(child: Text('Page 2'))),
                      Container(color: Colors.blue, child: Center(child: Text('Page 3'))),
                    ],
                  ),
                ),
            
                // 6. DraggableScrollableSheet
                sectionTitle('6. DraggableScrollableSheet (قائمة قابلة للسحب)'),
                SizedBox(
                  height: 200,
                  child: DraggableScrollableSheet(
                    initialChildSize: 0.3,
                    minChildSize: 0.2,
                    maxChildSize: 0.8,
                    builder: (context, scrollController) {
                      return ListView.builder(
                        controller: scrollController, // للتحكم في التمرير
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text('Item $index'),
                          );
                        },
                      );
                    },
                  ),
                ),
            
                // 7. ExpansionPanelList
                sectionTitle('7. ExpansionPanelList (قائمة قابلة للفتح والإغلاق)'),
                ExpansionPanelList(
                  expansionCallback: (index, isExpanded) {
                    // التحكم في توسيع العناصر
                  },
                  children: [
                    ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return ListTile(title: Text('Panel 1'));
                      },
                      body: ListTile(title: Text('Content for Panel 1')),
                      isExpanded: false, // العنصر مغلق افتراضيًا
                    ),
                    ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return ListTile(title: Text('Panel 2'));
                      },
                      body: ListTile(title: Text('Content for Panel 2')),
                      isExpanded: true, // العنصر مفتوح افتراضيًا
                    ),
                  ],
                ),
            
                // 8. ListWheelScrollView
                sectionTitle('8. ListWheelScrollView (عجلة تمرير)'),
                SizedBox(
                  height: 150,
                  child: ListWheelScrollView(
                    itemExtent: 50, // ارتفاع كل عنصر
                    children: [
                      Text('Item 1'),
                      Text('Item 2'),
                      Text('Item 3'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget لإنشاء عنوان لكل قسم
  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
/*شرح الكود بالكامل

SingleChildScrollView
استخدمناها لتمكين تمرير جميع القوائم في الشاشة بالكامل، لأنها تحتوي على أعمدة كثيرة.

ListView
قائمة عادية تعرض العناصر مباشرة (لما العناصر محدودة).

ListView.builder
لإنشاء قائمة طويلة بشكل ديناميكي بناءً على عدد معين من العناصر.

ListView.separated
نفس فكرة ListView.builder لكن بإضافة فواصل (Dividers) بين العناصر.

GridView.count
تُستخدم لعرض شبكة (Grid) بعرض ثابت للأعمدة.

PageView
لعرض صفحات يمكن التمرير بينها أفقيًا (مثل السلايدرز).

DraggableScrollableSheet
لإنشاء قائمة يمكن سحبها وتكبيرها أو تصغيرها.

ExpansionPanelList
قوائم تقدر تفتح وتغلق لإظهار تفاصيل إضافية.

ListWheelScrollView
قائمة بشكل عجلة، تتيح للمستخدم اختيار عنصر معين.*/