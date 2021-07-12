import 'package:flutter/material.dart';
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
      home: MyHomePage(title: '플러터 레퍼런스'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildMainButton('페이지 라우팅', () {
              Get.to(AlertScreen());
            }),
            _buildMainButton('리스트 무한 스크롤 및 당겨서 새로고침', () {
              Get.to(AlertScreen());
            }),
            _buildMainButton('Alert 창', () {
              Get.to(AlertScreen());
            }),
            _buildMainButton('BottomNavigation', () {
              Get.to(AlertScreen());
            }),
            _buildMainButton('Data Transfer', () {
              Get.to(AlertScreen());
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildMainButton(String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5.0),
          alignment: Alignment.center,
          color: Colors.black,
          width: Get.width * 0.87,
          height: Get.height * 0.07,
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
