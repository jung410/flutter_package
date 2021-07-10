import 'package:flutter/material.dart';
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
            _buildMainButton('페이지 라우팅'),
            _buildMainButton('리스트 무한 스크롤 및 당겨서 새로고침'),
            _buildMainButton('Alert 창'),
            _buildMainButton('BottomNavigation'),
            _buildMainButton('Data Transfer'),
          ],
        ),
      ),
    );
  }

  Widget _buildMainButton(String text) {
    return Center(
      child: Container(
        width: Get.width * 0.87,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.black.withOpacity(0.85),
            ),
          ),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
