import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            _buildMainButton('페이지 라우팅', () {
              Get.toNamed('/alert');
            }),
            _buildMainButton('리스트 무한 스크롤 및 당겨서 새로고침', () {
              Get.toNamed('/alert');
            }),
            _buildMainButton('Alert 창', () {
              Get.toNamed('/alert');
            }),
            _buildMainButton('BottomNavigation', () {
              Get.toNamed('/alert');
            }),
            _buildMainButton('Data Transfer', () {
              Get.toNamed('/alert');
            }),
          ],
        ),
      );
  }

  Widget _buildMainButton(String text, VoidCallback? onTap) {
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
