import 'package:flutter/material.dart';


class BoxesType extends StatelessWidget {
  const BoxesType({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("شرح جميع أنواع Boxes")),
        body: SingleChildScrollView( // يسمح بتمرير الشاشة عند زيادة المحتوى
          child: Column(
            children: [
              // 1. Container: صندوق يحتوي على عناصر، يمكن التحكم في الحجم، اللون، الحواف، والظل
              Container(
                width: 150, // عرض الصندوق
                height: 150, // ارتفاع الصندوق
                color: Colors.blue, // لون الصندوق الأساسي
                child: const Center( // يجعل النص في منتصف الصندوق
                  child: Text(
                    "Container", // النص المعروض داخل الصندوق
                    style: TextStyle(color: Colors.white), // لون النص أبيض
                  ),
                ),
              ),
              const SizedBox(height: 20), // مسافة بين العناصر

              // 2. SizedBox: لتحديد حجم معين للعناصر، ويمكن استخدامه كمسافة فارغة
              SizedBox(
                width: 150, // عرض العنصر
                height: 50, // ارتفاع العنصر
                child: ElevatedButton( // زر بداخل SizedBox
                  onPressed: () {}, // الإجراء عند الضغط على الزر
                  child: const Text("SizedBox Button"), // النص داخل الزر
                ),
              ),
              const SizedBox(height: 20),


              // 3. Padding: يضيف مسافات داخلية حول العنصر
              Padding(
                padding: const EdgeInsets.all(16.0), // يضيف مسافة داخلية بمقدار 16 من كل الاتجاهات
                child: Container(
                  color: Colors.green, // لون الصندوق الداخلي
                  child: const Text(
                    "Padding: مسافات داخلية", // النص داخل Padding
                    style: TextStyle(color: Colors.white), // لون النص أبيض
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // 4. Center: يضع العنصر الابن في منتصف المساحة المتاحة
              Center(
                child: Container(
                  color: Colors.orange, // لون الصندوق
                  width: 100, // عرض الصندوق
                  height: 100, // ارتفاع الصندوق
                  child: const Center( // يضع النص في المنتصف
                    child: Text(
                      "Center", // النص داخل Center
                      style: TextStyle(color: Colors.white), // لون النص أبيض
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // 5. Align: يحدد موقع العنصر داخل المساحة
              Align(
                alignment: Alignment.bottomRight, // يضع العنصر في الزاوية السفلى اليمنى
                child: Container(
                  color: Colors.purple, // لون الصندوق
                  width: 100, // عرض الصندوق
                  height: 100, // ارتفاع الصندوق
                  child: const Center( // يجعل النص في المنتصف داخل Align
                    child: Text(
                      "Align", // النص داخل Align
                      style: TextStyle(color: Colors.white), // لون النص أبيض
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // 6. Expanded: يملأ المساحة المتاحة داخل Row أو Column
              Row( // Row لعرض العناصر بجانب بعضها
                children: [
                  Expanded( // يملأ المساحة المتاحة داخل الصف
                    child: Container(
                      color: Colors.red, // لون العنصر الأول
                      height: 50, // ارتفاع العنصر الأول
                      child: const Center(
                        child: Text(
                          "Expanded", // النص داخل العنصر الأول
                          style: TextStyle(color: Colors.white), // لون النص أبيض
                        ),
                      ),
                    ),
                  ),
                  Expanded( // العنصر الثاني مشابه للأول
                    child: Container(
                      color: Colors.blue, // لون العنصر الثاني
                      height: 50, // ارتفاع العنصر الثاني
                      child: const Center(
                        child: Text(
                          "Expanded", // النص داخل العنصر الثاني
                          style: TextStyle(color: Colors.white), // لون النص أبيض
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // 7. Flexible: مشابه لـ Expanded لكن يسمح بالمرونة أكثر
              Row(
                children: [
                  Flexible( // يتيح المرونة بحجم العنصر داخل الصف
                    flex: 1, // يأخذ نسبة 1 من المساحة المتاحة
                    child: Container(
                      color: Colors.teal, // لون العنصر الأول
                      height: 50, // ارتفاع العنصر الأول
                      child: const Center(
                        child: Text(
                          "Flexible 1", // النص داخل العنصر الأول
                          style: TextStyle(color: Colors.white), // لون النص أبيض
                        ),
                      ),
                    ),
                  ),
                  Flexible( // العنصر الثاني يأخذ نسبة أكبر
                    flex: 2, // يأخذ نسبة 2 من المساحة المتاحة
                    child: Container(
                      color: Colors.cyan, // لون العنصر الثاني
                      height: 50, // ارتفاع العنصر الثاني
                      child: const Center(
                        child: Text(
                          "Flexible 2", // النص داخل العنصر الثاني
                          style: TextStyle(color: Colors.white), // لون النص أبيض
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // 8. ConstrainedBox: يضيف قيود على حجم العنصر الابن
              ConstrainedBox(
                constraints: const BoxConstraints( // يحدد قيود على الحجم
                  minWidth: 100, // أقل عرض
                  maxWidth: 200, // أقصى عرض
                  minHeight: 50, // أقل ارتفاع
                  maxHeight: 100, // أقصى ارتفاع
                ),
                child: Container(
                  color: Colors.lime, // لون العنصر
                  child: const Center(
                    child: Text(
                      "ConstrainedBox", // النص داخل العنصر
                      style: TextStyle(color: Colors.black), // لون النص أسود
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // 9. OverflowBox: يسمح للعنصر الابن بالخروج عن حدود الأب
              Container(
                width: 100, // عرض العنصر الأب
                height: 100, // ارتفاع العنصر الأب
                color: Colors.grey, // لون العنصر الأب
                child: OverflowBox( // يسمح بخروج العنصر الابن خارج حدود الأب
                  maxWidth: 150, // أقصى عرض للابن
                  maxHeight: 150, // أقصى ارتفاع للابن
                  child: Container(
                    width: 150, // عرض العنصر الابن
                    height: 150, // ارتفاع العنصر الابن
                    color: Colors.red, // لون العنصر الابن
                  ),
                ),
              ),
              const SizedBox(height: 100),

              // 10. UnconstrainedBox: يزيل القيود عن العنصر الابن
              Container(
                width: 100, // عرض العنصر الأب
                height: 100, // ارتفاع العنصر الأب
                color: Colors.grey, // لون العنصر الأب
                child:UnconstrainedBox(
                  clipBehavior: Clip.none, // يسمح بخروج العنصر خارج الأب
                  child: Container(
                    //هنا هيحصل ايرور عشان الابن اكبر من الاب 
                    width: 120,
                    height: 120,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        "UnconstrainedBox",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100),

              // 11. FittedBox: يجعل العنصر الابن يتكيف مع المساحة المتاحة
              Container(
                width: 100, // عرض العنصر الأب
                height: 50, // ارتفاع العنصر الأب
                color: Colors.yellow, // لون العنصر الأب
                child: FittedBox( // يجعل النص يتناسب مع المساحة المتاحة
                  child: Text(
                    "FittedBox: Fit text", // النص داخل العنصر
                    style: TextStyle(color: Colors.black, fontSize: 20), // النص بحجم كبير
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // 12. DecoratedBox: يضيف خلفيات، حدود، وظلال للعناصر
              DecoratedBox(
                decoration: BoxDecoration( // يضيف خلفية، حدود، وحواف
                  color: Colors.indigo, // لون الخلفية
                  border: Border.all(color: Colors.black, width: 2), // تحديد بلون أسود
                  borderRadius: BorderRadius.circular(10), // زوايا دائرية
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0), // مسافات داخلية
                  child: Text(
                    "DecoratedBox", // النص داخل العنصر
                    style: TextStyle(color: Colors.white), // لون النص أبيض
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // 13. Stack: يضع العناصر فوق بعضها
              Stack( // يضع العناصر فوق بعضها
                alignment: Alignment.center, // جميع العناصر في منتصف الـ Stack
                children: [
                  Container(
                    width: 200, // عرض العنصر الأول
                    height: 200, // ارتفاع العنصر الأول
                    color: Colors.pink, // لون العنصر الأول
                  ),
                  Container(
                    width: 100, // عرض العنصر الثاني
                    height: 100, // ارتفاع العنصر الثاني
                    color: Colors.white, // لون العنصر الثاني
                  ),
                  const Text("Stack", style: TextStyle(color: Colors.black)), // النص يظهر فوق كل العناصر
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
