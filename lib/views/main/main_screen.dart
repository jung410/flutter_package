import 'package:flutter/material.dart';
import 'package:flutter_package/views/main/components/body.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  static String routeName = "/main";

  @override
  Widget build(BuildContext context) {
    // return DefaultNonTitleHaveBottomAppbarLayout(
    //   title: '',
    //   child: SafeArea(child: Body()),
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text("플루터 레퍼런스"),
      ),
      body: Body(),
    );
  }
}
