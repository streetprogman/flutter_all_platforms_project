import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'color_constants.dart';

class Snack {
  static showError(String title, String message) {
    Get.snackbar(title, message,
        snackPosition: SnackPosition.TOP,
        duration: Duration(seconds: 5),
        isDismissible: true,
        shouldIconPulse: true,
        leftBarIndicatorColor: ColorConstants.errorLeftIndicatorColor,
        borderRadius: 10,
        boxShadows: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 6,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        backgroundColor: ColorConstants.errorBackgroundColor,
        titleText: Row(
          children: [
            Expanded(
              child: Icon(
                Icons.warning_amber_outlined,
                color: ColorConstants.errorTitleColor,
              ),
            ),
            Expanded(
              flex: 12,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  color: ColorConstants.errorTitleColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        messageText: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "• ",
                            style: TextStyle(fontSize: 20),
                          )))),
              Expanded(
                flex: 8,
                child: Container(
                  child: Text(
                    message,
                    style: TextStyle(
                      fontSize: 16,
                      //color: ColorConstants.redText,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  static show(String title, String message) {
    Get.snackbar(title, message,
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 5),
        isDismissible: true,
        shouldIconPulse: true,
        colorText: ColorConstants.successGreenColor,
        boxShadows: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 6,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: 10,
        leftBarIndicatorColor: ColorConstants.successGreenColor,
        backgroundColor: ColorConstants.successBackgroundColor,
        titleText: Row(
          children: [
            Expanded(
              child: Icon(
                Icons.check,
                color: ColorConstants.successGreenColor,
              ),
            ),
            Expanded(
              flex: 12,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  color: ColorConstants.successGreenColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        messageText: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "• ",
                            style: TextStyle(fontSize: 16),
                          )))),
              Expanded(
                flex: 8,
                child: Container(
                  child: Text(
                    message,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  static showSuccess(String title, String message) {
    Get.snackbar(title, message,
        snackPosition: SnackPosition.TOP,
        duration: Duration(seconds: 5),
        isDismissible: true,
        shouldIconPulse: true,
        colorText: ColorConstants.successGreenColor,
        boxShadows: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 6,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: 10,
        leftBarIndicatorColor: ColorConstants.successGreenColor,
        backgroundColor: ColorConstants.successBackgroundColor,
        titleText: Row(
          children: [
            Expanded(
              child: Icon(
                Icons.check,
                color: ColorConstants.successGreenColor,
              ),
            ),
            Expanded(
              flex: 12,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  color: ColorConstants.successGreenColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        messageText: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "• ",
                            style: TextStyle(fontSize: 16),
                          )))),
              Expanded(
                flex: 8,
                child: Container(
                  child: Text(
                    message,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  static showPush(String title, String message) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 5),
      isDismissible: true,
      shouldIconPulse: true,
      boxShadows: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 4,
          blurRadius: 6,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
      borderRadius: 10,
      backgroundColor: ColorConstants.newNotificationBackground,
      titleText: Row(
        children: [
          Expanded(
            child: Icon(
              Icons.info_outline,
              color: ColorConstants.successGreenColor,
            ),
          ),
          Expanded(
            flex: 12,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: ColorConstants.successGreenColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      messageText: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "• ",
                          style: TextStyle(fontSize: 16),
                        )))),
            Expanded(
              flex: 8,
              child: Container(
                child: Text(
                  message,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // onTap: (snack) {
      //   print('routing: ${Get.routing.current}');
      //   if (Get.routing.current == Routes.NOTIFICATIONS) {
      //     //fetch notifications
      //   } else {
      //     Get.toNamed(Routes.NOTIFICATIONS);
      //   }
      // },
    );
  }
}
