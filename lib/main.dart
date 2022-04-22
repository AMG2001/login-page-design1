import 'package:flutter/material.dart';
import 'package:login_design1/login_page/login_page.dart';

void main() {
  runApp(Design1());
}

class Design1 extends StatelessWidget {
  const Design1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Design-1",
      home: LoginPage(),
    );
  }
}