import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:flutter_responsive_helper/flutter_responsive_helper.dart';
import 'package:malay_portfolio/app/modules/hello/controllers/hello_controller.dart';
import 'package:malay_portfolio/helper/helper.dart';
import 'package:malay_portfolio/widgets/common_bottombar.dart';
import 'package:malay_portfolio/widgets/common_tabbar.dart';
import 'package:malay_portfolio/widgets/common_textfield.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopHelloScreen extends StatefulWidget {
  DesktopHelloScreen({super.key, required this.controller});
  HelloController controller;
  @override
  State<DesktopHelloScreen> createState() => _DesktopHelloScreenState();
}

class _DesktopHelloScreenState extends State<DesktopHelloScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackgroundColor,
      body: Column(
        children: [
          CommonTabbar(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: 'Hi all. I am',
                    width: 140.w(context),
                    height: 24.h(context),
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 18.t(context),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  AppText(
                    text: 'Malay Patel',
                    width: 530.w(context),
                    height: 81.h(context),
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 62.t(context),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Tada(
                    preferences: AnimationPreferences(
                        offset: Duration(milliseconds: 1000)),
                    child: AppText(
                      text: '> Developer',
                      width: 415.w(context),
                      height: 42.h(context),
                      style: TextStyle(
                        color: AppColors.purpleColor,
                        fontSize: 32.t(context),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 81.h(context),
                  ),
                  BounceInLeft(
                    preferences: AnimationPreferences(
                        offset: Duration(milliseconds: 2000)),
                    child: AppText(
                      text: '// complete the game to continue',
                      width: 335.w(context),
                      style: TextStyle(
                        fontSize: 16.t(context),
                        color: AppColors.codeColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h(context),
                  ),
                  BounceInLeft(
                    preferences: AnimationPreferences(
                        offset: Duration(milliseconds: 2000)),
                    child: AppText(
                      text: '// you can also see it on my Github page',
                      width: 400.w(context),
                      style: TextStyle(
                        fontSize: 16.t(context),
                        color: AppColors.codeColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h(context),
                  ),
                  BounceInLeft(
                    preferences: AnimationPreferences(
                        offset: Duration(milliseconds: 2000)),
                    child: AppRichText(
                      text: TextSpan(
                        text: 'cosnt ',
                        children: [
                          TextSpan(
                            text: 'githubLink ',
                            style: TextStyle(
                              fontSize: 16.t(context),
                              color: AppColors.tealColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: '= ',
                            style: TextStyle(
                              fontSize: 16.t(context),
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: '"https://github.com/Malay1121"',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                if (await canLaunchUrl(Uri.parse(
                                    'https://github.com/Malay1121'))) {
                                  await launchUrl(Uri.parse(
                                      'https://github.com/Malay1121'));
                                }
                              },
                            style: TextStyle(
                              fontSize: 16.t(context),
                              color: AppColors.pinkColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      width: 400.w(context),
                      style: TextStyle(
                        fontSize: 16.t(context),
                        color: AppColors.purpleColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 200.w(context),
              ),
              Stack(
                children: [
                  Image.asset(
                    AppStrings.backgroundBlur,
                    height: 742.27.h(context),
                    width: 779.6.w(context),
                    fit: BoxFit.scaleDown,
                  ),
                  Positioned(
                    top: 126.88.h(context),
                    left: 60.5.w(context),
                    child: RollIn(
                      preferences: AnimationPreferences(
                          offset: Duration(milliseconds: 700)),
                      child: Container(
                        width: 500.w(context),
                        height: 500.h(context),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(
                                0,
                                0,
                              ),
                              // color: Colors.white.withOpacity(0.3),
                              blurRadius: 20,
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF175553),
                              AppColors.tealColor.withOpacity(0.13)
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 475.w(context),
                              height: 475.h(context),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // border: Border.all(
                                //   color: AppColors.purpleColor,
                                //   width: 1,
                                // ),
                                image: DecorationImage(
                                  image: AssetImage(AppStrings.profilePicture),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          CommonBottombar(),
        ],
      ),
    );
  }
}
