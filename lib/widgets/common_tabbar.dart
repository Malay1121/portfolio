import 'package:flutter/material.dart';
import 'package:flutter_responsive_helper/flutter_responsive_helper.dart';
import 'package:get/get.dart';
import 'package:malay_portfolio/app/routes/app_pages.dart';
import 'package:malay_portfolio/responsive.dart';
import 'package:malay_portfolio/widgets/common_bottombar.dart';

import '../helper/helper.dart';
import 'common_textfield.dart';

class CommonTabbar extends StatefulWidget {
  CommonTabbar({
    super.key,
    this.selectedTab = '_hello',
  });

  String selectedTab = '_hello';

  @override
  State<CommonTabbar> createState() => _CommonTabbarState();
}

class _CommonTabbarState extends State<CommonTabbar> {
  Map tabs = {
    '_hello': Routes.HELLO,
    '_about-me': Routes.HELLO,
    '_projects': Routes.HELLO,
  };

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Container(
          height: 55.19.h(context),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.borderColor,
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 40.w(context),
              ),
              AppText(
                text: 'malay_patel',
                // height: 30.h(context),
                // width: 300.w(context),
                centered: true,
                style: TextStyle(
                  color: AppColors.codeColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 23.t(context),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Scaffold(
                        backgroundColor: Color(0xFF010C15),
                        body: Padding(
                          padding: EdgeInsets.all(15.h(context)),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackgroundColor,
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                              border: Border.all(
                                color: AppColors.borderColor,
                                width: 1,
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 55.19.h(context),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 30.w(context),
                                      ),
                                      AppText(
                                        text: 'malay_patel',
                                        // height: 30.h(context),
                                        // width: 300.w(context),
                                        centered: true,
                                        style: TextStyle(
                                          color: AppColors.codeColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 22.t(context),
                                        ),
                                      ),
                                      Spacer(),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Icon(
                                          Icons.close,
                                          color: AppColors.codeColor,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18.w(context),
                                      ),
                                    ],
                                  ),
                                ),
                                for (var tab in tabs.keys.toList())
                                  InkWell(
                                    onTap: () {
                                      Get.toNamed(tabs[tab]);
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          30.h(context),
                                      height: 55.19.h(context),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: AppColors.borderColor,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 30.w(context),
                                            ),
                                            child: AppText(
                                              text: tab,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: AppColors.whiteColor,
                                                fontSize: 23.t(context),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                InkWell(
                                  onTap: () {
                                    // Get.toNamed(tabs[tab]);
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width -
                                        30.h(context),
                                    height: 55.19.h(context),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.borderColor,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 30.w(context),
                                          ),
                                          child: AppText(
                                            text: '_contact-me',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: AppColors.whiteColor,
                                              fontSize: 23.t(context),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Spacer(),
                                CommonBottombar(
                                  tabBar: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Icon(
                  Icons.menu,
                  color: AppColors.codeColor,
                ),
              ),
              SizedBox(
                width: 40.w(context),
              ),
            ],
          ),
        ),
        tablet: Container(
          height: 55.19.h(context),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.borderColor,
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 40.w(context),
              ),
              AppText(
                text: 'malay_patel',
                // height: 30.h(context),
                // width: 300.w(context),
                centered: true,
                style: TextStyle(
                  color: AppColors.codeColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 23.t(context),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Scaffold(
                        backgroundColor: Color(0xFF010C15),
                        body: Padding(
                          padding: EdgeInsets.all(15.h(context)),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primaryBackgroundColor,
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                              border: Border.all(
                                color: AppColors.borderColor,
                                width: 1,
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 55.19.h(context),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 30.w(context),
                                      ),
                                      AppText(
                                        text: 'malay_patel',
                                        // height: 30.h(context),
                                        // width: 300.w(context),
                                        centered: true,
                                        style: TextStyle(
                                          color: AppColors.codeColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 22.t(context),
                                        ),
                                      ),
                                      Spacer(),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Icon(
                                          Icons.close,
                                          color: AppColors.codeColor,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 18.w(context),
                                      ),
                                    ],
                                  ),
                                ),
                                for (var tab in tabs.keys.toList())
                                  InkWell(
                                    onTap: () {
                                      Get.toNamed(tabs[tab]);
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          30.h(context),
                                      height: 55.19.h(context),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: AppColors.borderColor,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 30.w(context),
                                            ),
                                            child: AppText(
                                              text: tab,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: AppColors.whiteColor,
                                                fontSize: 23.t(context),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                Spacer(),
                                InkWell(
                                  onTap: () {
                                    // Get.toNamed(tabs[tab]);
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width -
                                        30.h(context),
                                    height: 55.19.h(context),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.borderColor,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 30.w(context),
                                          ),
                                          child: AppText(
                                            text: '_contact-me',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: AppColors.whiteColor,
                                              fontSize: 23.t(context),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Icon(
                  Icons.menu,
                  color: AppColors.codeColor,
                ),
              ),
              SizedBox(
                width: 40.w(context),
              ),
            ],
          ),
        ),
        desktop: Container(
          height: 55.19.h(context),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.borderColor,
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 22.w(context),
              ),
              AppText(
                text: 'malay_patel',
                // height: 30.h(context),
                width: 140.w(context),
                centered: true,
                style: TextStyle(
                  color: AppColors.codeColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.t(context),
                ),
              ),
              SizedBox(
                width: 149.w(context),
              ),
              for (var tab in tabs.keys.toList())
                widget.selectedTab == tab
                    ? Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.borderColor,
                          ),
                        ),
                        child: Column(
                          children: [
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(left: 30, right: 30),
                              child: AppText(
                                text: tab,
                                style: TextStyle(
                                  fontSize: 16.t(context),
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 3,
                              color: AppColors.orangeColor,
                            ),
                          ],
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          Get.toNamed(tabs[tab]);
                        },
                        child: Container(
                          // width: 160.w(context),
                          height: 55.19.h(context),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.borderColor,
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 30, right: 30),
                              child: AppText(
                                text: tab,
                                style: TextStyle(
                                  color: AppColors.codeColor,
                                  fontSize: 16.t(context),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
              Spacer(),
              Container(
                // width: 160.w(context),
                height: 55.19.h(context),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.borderColor,
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: AppText(
                      text: '_contact-me',
                      style: TextStyle(
                        color: AppColors.codeColor,
                        fontSize: 16.t(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
