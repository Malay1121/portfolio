import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:malay_portfolio/app/modules/home/views/desktop_home_view.dart';
import 'package:malay_portfolio/app/modules/home/views/mobile_home_view.dart';
import 'package:malay_portfolio/app/modules/home/views/tablet_home_view.dart';
import 'package:malay_portfolio/responsive.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: MobileHomeView(
        controller: controller,
      ),
      desktop: DesktopHomeView(
        controller: controller,
      ),
      tablet: TabletHomeView(
        controller: controller,
      ),
    );
  }
}
