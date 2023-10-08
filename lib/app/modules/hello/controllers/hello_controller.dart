import 'package:flutter/material.dart';
import 'package:flutter_responsive_helper/flutter_responsive_helper.dart';
import 'package:get/get.dart';

class HelloController extends GetxController {
  //TODO: Implement HelloController

  final count = 0.obs;

  Widget screw = Container(
    height: 13.h(Get.context!),
    width: 13.h(Get.context!),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
            offset: Offset(
              2,
              2,
            ),
            blurRadius: 4,
            color: Color(0xFF0D4341)),
        BoxShadow(
            offset: Offset(
              0,
              2,
            ),
            blurRadius: 2,
            color: Color(0xFF1F8177)),
      ],
      gradient: RadialGradient(
        colors: [
          Color(0xFF217D7A),
          Color(0xFF114B4A),
        ],
      ),
    ),
    child: Icon(
      Icons.close,
      size: 7.h(Get.context!),
    ),
  );

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
