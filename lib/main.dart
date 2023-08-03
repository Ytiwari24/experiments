import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'FormPage.dart';
import 'list_display_page.dart';
import 'visibility_dart.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: MyListView() 
      
      // const FormPage(),
      // routes: {
      //   '/listDisplay': (context) => ListDisplayPage(const []),
      // },
    );
  }
}
