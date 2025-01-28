import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // مكتبة لتحويل البيانات JSON


class HttpApi extends StatefulWidget {
  const HttpApi({super.key});

  @override
  _HttpApiState createState() => _HttpApiState();
}

class _HttpApiState extends State<HttpApi> {
  List<dynamic> _posts = []; // لتخزين البيانات التي يتم جلبها من API

  // دالة لجلب البيانات من API
  Future<void> fetchPosts() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts'); // رابط API

    try {
      final response = await http.get(url); // طلب HTTP GET لجلب البيانات

      if (response.statusCode == 200) { // التأكد من نجاح الطلب
        // تحويل النص المستلم (JSON) إلى List
        final data = json.decode(response.body);

        setState(() {
          _posts = data; // حفظ البيانات في المتغير
        });
      } else {
        // لو حصل خطأ في الاتصال
        print('Failed to load posts. Status code: ${response.statusCode}');
      }
    } catch (e) {
      // في حالة وجود استثناء
      print('Error: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchPosts(); // استدعاء الدالة بمجرد تحميل الشاشة
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: _posts.isEmpty // التحقق إذا كانت البيانات فارغة
          ? Center(child: CircularProgressIndicator()) // إظهار مؤشر تحميل
          : ListView.builder(
        itemCount: _posts.length, // عدد العناصر في القائمة
        itemBuilder: (context, index) {
          final post = _posts[index]; // عنصر واحد من البيانات
          return ListTile(
            title: Text(post['title']), // عرض العنوان
            subtitle: Text(post['body']), // عرض النص
          );
        },
      ),
    );
  }
}
