import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelperDialog {
  static void showErrorDialog(
      {String title = "Error", String description = "Something went wrong!"}) {
    Get.dialog(Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title ?? "",
              style: Get.textTheme.headline5,
            ),
            Text(
              description ?? "",
              style: Get.textTheme.headline6,
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Okay'),
            ),
          ],
        ),
      ),
    ));
  }
}
