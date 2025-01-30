import 'package:flutter/material.dart';

class TextFormFieldLearn extends StatelessWidget {
  const TextFormFieldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    //بعرف فاريبول من النوع TextEditing.. عشان استخدم الفتريبول دة فى حفظ القيمة بعد كده
    TextEditingController? nameController = TextEditingController();
    GlobalKey<FormState> key = GlobalKey<FormState>();
    return Container(
      margin: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Form(
          key: key,
          child: Column(
            spacing: 40,
            children: [
              //ال2 زي بعض في الشكل مفيش اي اختلاف شكلا
              TextFormField(),
              TextField(),
              TextFormField(
                //فى شرطه بتظهر مكان ما هكتب | هنا بتحكم فى لونها
                cursorColor: Colors.amber,
                //هنا في طولها
                cursorHeight: 2,
                //هنا فى عرضها
                cursorWidth: 2,
                //هنا بتحكم فى نوع الخط وشكله وحجمه
                style: TextStyle(),
                initialValue: 'هنا بحط قيمة دى هتظهر وهكمل عليها',
                //هنا بعد ما بكتب لما بدوس بيحصل ايه جو معناها يروح للي بعده
                textInputAction: TextInputAction.go,
                /*
                    بتفرق في شكل الزرار برضو
                    سيرش بيبداء بحث
                    textInputAction: TextInputAction.search,
                    سيند بيبعت مسج مثلا
                    textInputAction: TextInputAction.send,*/
                //نوع البيانات الي هدخلها
                keyboardType: TextInputType.name,

                //اتجاه الكلام فى النص ولا من البداية ولا النهاية وهكذا
                textAlign: TextAlign.center,

                /*
                    textAlign: TextAlign.start,
                    textAlign: TextAolign.end,
                    textAlign: TextAlign.right,

                    justify بتظبط المسافات بين الكلمات وف الغالب لما بيكون اكتر من سطر
                    textAlign: TextAlign.justify,

                    textAlign: TextAlign.left,
                    textAlign: TextAlign.values,*/
                //بستخدمها لو مش عايزة اظهر الباسورد مثلا او اي كلام هيتكتب
                obscureText: true,
                //دا معناه انه للقراءه فقط مينفعش اعدل عليه
                readOnly: true,

                //كدة انا هبداء اغير شكل الinput والعب في الديزاين براحتي
                decoration: InputDecoration(
                  // دة الي هيظهر جوا الinput ولكن ع الجنب اليمين بيظهر لما بكون جوا الانبوت
                  //هنا بتاخد ويدجيت ايا كان نوعها
                  suffix: Text('Email'),
                  // ايقون بس وطلاما حددت نوع الsuffix هيفضل شكله ثابت سواء دايسة او لا
                  suffixIcon: Icon(Icons.email),
                  //بتعمل استايل للتكست بس
                  suffixStyle: TextStyle(),
                  //هنا بتاخد تكست بسس
                  // suffixText: Text('data'),
                  //المسافه جوا الانبوت
                  contentPadding: EdgeInsets.all(2),
                  //بتغير لون الايقون
                  suffixIconColor: Colors.amberAccent,
                  //بكتبها كهينت وبتختفى لما بدوس
                  hintText: "tmm",
                  //اقصي عدد سطور للهينت
                  hintMaxLines: 2,
                  //استايل الهينت
                  hintStyle: TextStyle(),
                  //اتجاهه على حسب اللغه
                  hintTextDirection: TextDirection.ltr,
                  //كل الكلام ده متكرر فى prefix بس للشمال
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  //هنا بتاخد ويدجيت ايا كان نوعها
                  prefix: Text('Email'),
                  //ايقون بس
                  prefixIcon: Icon(Icons.email),
                  //بتعمل استايل للتكست بس
                  prefixStyle: TextStyle(),
                  //هنا بتاخد تكست بسس
                  // prefixText: Text('data'),
                  //بتغير لون الايقون
                  prefixIconColor: Colors.amberAccent,
                ),
              ),
              TextFormField(
                //شكل الانبوت
                decoration: InputDecoration(
                  //هنا عشان اعمل بوردر وهو مقفول من غير ما ادوس عليه
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                      width: 5,
                      strokeAlign: 2,
                    ),
                  ),
                  //هنا عشان اعمل بوردر لما ادوس عليه
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                      width: 5,
                      strokeAlign: 2,
                    ),
                    //الدايرة الي ع الحروف
                    borderRadius: BorderRadius.circular(15),
                  ),
                  //هنا لما بعملها بتتعمل لجميع الحالات مره واحده مش محتاجة احدد لما ادوس او مدوستش
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                      width: 5,
                      strokeAlign: 2,
                    ),
                    //الدايرة الي ع الحروف
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                //دا الكنترولر الى هخزن فى القيمه بعد كده
                controller: nameController,
                //بتستخدم برضو فى حفظ القيمة لكن فى فرق بسيط بينها وبين الكنترولر (دى القيمة بتتغير فى نفس اللحظه)
                onChanged: (value) {},
                // بستخدمها عشان اتاكد من القيمه الي دخلت
                validator: (value) {
                  //هنا بحط الشروط الي عايزة اتاكد انها موجوده فى القيمة الي هو دخلها
                  //مثلا هنا بتاكد ان القيمة مش فاضيه
                  if (value == null || value.isEmpty) {
                    print('Empty');
                  }
                  return null;
                },
                //عشان اتاكد اوتوماتك من قبل ما دوس اوكي
                autovalidateMode: AutovalidateMode.always,

                //هنا بخزن القيمة الي دخلتها
                onSaved: (newValue) => nameController.text != newValue,
              ),
              ElevatedButton(
                onPressed: () {
                  //هنا بتاكد ان الفالديتور تمام
                  if (key.currentState!.validate()) {
                    key.currentState!.save();
                    print(nameController.text);
                    print('Gooood Job');
                  }
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
