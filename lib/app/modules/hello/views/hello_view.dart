import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:malay_portfolio/app/modules/hello/views/desktop_hello_view.dart';
import 'package:malay_portfolio/app/modules/hello/views/tablet_hello_view.dart';
import 'package:malay_portfolio/app/modules/home/views/desktop_home_view.dart';
import 'package:malay_portfolio/responsive.dart';

import '../controllers/hello_controller.dart';
import 'mobile_hello_view.dart';

class HelloView extends GetView<HelloController> {
  const HelloView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: MobileHelloScreen(
        controller: controller,
      ),
      tablet: TabletHelloScreen(
        controller: controller,
      ),
      desktop: DesktopHelloScreen(
        controller: controller,
      ),
    );
  }
}
