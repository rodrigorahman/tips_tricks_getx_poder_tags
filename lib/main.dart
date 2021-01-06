import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tips_tricks_getx/application/application_bindings.dart';
import 'package:tips_tricks_getx/pages/home_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialBinding: ApplicationBindings(),
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage()
        ),
      ],
    );
  }
}