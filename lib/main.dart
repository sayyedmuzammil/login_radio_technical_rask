import 'package:flutter/material.dart';
import 'package:sign_in_page/sign_in.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch:Colors.grey, 
      ),
      home:  SignIn(),
      
    );
  }
    );
  }
}

