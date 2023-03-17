
import 'package:flutter/material.dart';
import 'home_page.dart';
void main(){
  runApp(const CitrusApp());
}

class CitrusApp extends StatelessWidget {
  const CitrusApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}






