import 'package:flutter/material.dart';

import 'components/body.dart';

class AlertScreen extends StatelessWidget {
  static String routeName = "/alert";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert 예제'),
      ),
      body: Body(),
    );
  }
}
