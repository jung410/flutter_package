import 'package:flutter/material.dart';
import 'package:flutter_package/route/app_pages.dart';
import 'package:flutter_package/views/alert/alert_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, // debug 띠 삭제
      enableLog: true, // getX log 허용
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      // home: MyHomePage(title: '플러터 레퍼런스'),
    );
  }
}