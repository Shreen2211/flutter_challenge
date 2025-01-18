import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> key = GlobalKey<FormState>();
    TextEditingController email=TextEditingController();
    TextEditingController password=TextEditingController();
    return Container(
      padding: EdgeInsets.all(30),
      height: double.infinity,
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        key: key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: email,
              textInputAction: TextInputAction.go,
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              controller: password,
              textInputAction: TextInputAction.done,
              obscureText: true,
              validator: (value) {
                if(value!.isEmpty){
                  return 'Password is Empty';
                }else if (value.length<8){
                  return 'Password must be more than 7';
                } else{
                  return null;
                }
              },
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              if(key.currentState!.validate()){
                //print('Login success');
              }
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
