import 'package:flutter/material.dart';
import 'package:flutter_responsive_helper/flutter_responsive_helper.dart';

import 'package:get/get.dart';
import 'package:malay_portfolio/helper/helper.dart';

import 'app/routes/app_pages.dart';

void main() {
  initializeSize(1782, 941);
  runApp(
    GetMaterialApp(
      title: "Malay Patel",
      initialRoute: AppPages.INITIAL,
      theme: ThemeData(
        fontFamily: AppStrings.primaryFont,
      ),
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
    ),
  );
}
