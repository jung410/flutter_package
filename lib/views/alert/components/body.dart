import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              alertGeneral(context).show();
            },
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              height: 50,
              width: 200,
              child: Text(
                '일반 Alert',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Alert alertGeneral(context) {
    // Get.back();
    return Alert(
      // onWillPopActive: true,
      useRootNavigator: false,
      context: context,
      style: AlertStyle(
        isCloseButton: false,
        // isOverlayTapDismiss: false,
        alertBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(
            color: Colors.grey,
          ),
        ),
        titleTextAlign: TextAlign.center,
        titleStyle: TextStyle(fontSize: 14),
        descStyle: TextStyle(fontSize: 12),
        alertAlignment: Alignment.center,
      ),
      title: '최상위 제목을 입력할 수 있습니다.',
      content: Text(
        "컨텐츠를 입력할 수 있습니다.",
        style: TextStyle(fontSize: 12),
        textAlign: TextAlign.center,
      ),
      desc: '부제목을 넣을 수 있습니다.',
      buttons: [
        DialogButton(
          radius: BorderRadius.circular(30),
          color: Colors.black12,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {
            Get.back();
          },
          child: Text(
            "확인",
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        )
      ],
    );
  }
}
