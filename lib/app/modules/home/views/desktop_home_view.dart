import 'package:flutter/material.dart';
import 'package:flutter_responsive_helper/flutter_responsive_helper.dart';
import 'package:get/get.dart';
import 'package:malay_portfolio/helper/helper.dart';

import '../../../../widgets/common_textfield.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class DesktopHomeView extends StatefulWidget {
  DesktopHomeView({super.key, required this.controller});

  HomeController controller;

  @override
  State<DesktopHomeView> createState() => _DesktopHomeViewState();
}

class _DesktopHomeViewState extends State<DesktopHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackgroundColor,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(
            text: 'HI!',
            // height: 644.h(context),

            width: 408.w(context),
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 538.t(context),
              fontFamily: AppStrings.bigShoulder,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 84.w(context),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: 'Welcome to my personal website.',
                height: 30.h(context),
                width: 450.w(context),
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 26.t(context),
                  fontFamily: AppStrings.iceland,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 46.h(context),
              ),
              AppText(
                text:
                    'I have created this website to feel like a game/sci-fi interface. All text inside tries to reflect this.\n\n You will find ‘achievements’ or ‘quests’ that show the progress in my professional life and are related to what I am working on.',
                height: 121.h(context),
                width: 734.w(context),
                maxLines: null,
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 26.t(context),
                  fontFamily: AppStrings.iceland,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 68.h(context),
              ),
              InkWell(
                onHover: (hovered) {
                  setState(() {
                    widget.controller.hovered = hovered;
                  });
                  widget.controller.update();
                },
                onTap: () {
                  Get.toNamed(Routes.HELLO);

                  // controller.hovered = false;
                  // controller.update();
                },
                child: Container(
                  width: 266.w(context),
                  height: 55.h(context),
                  decoration: BoxDecoration(
                    color: widget.controller.hovered
                        ? AppColors.whiteColor
                        : Colors.transparent,
                    border: Border.all(
                      color: AppColors.whiteColor,
                    ),
                  ),
                  child: Center(
                    child: AppText(
                      text: 'enter the system'.toUpperCase(),
                      width: 163.w(context),
                      style: TextStyle(
                        color: widget.controller.hovered
                            ? AppColors.primaryBackgroundColor
                            : AppColors.whiteColor,
                        fontSize: 26.t(context),
                        fontFamily: AppStrings.iceland,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
