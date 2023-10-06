import 'package:flutter/material.dart';
import 'package:flutter_responsive_helper/flutter_responsive_helper.dart';
import 'package:malay_portfolio/helper/helper.dart';
import 'package:malay_portfolio/widgets/common_textfield.dart';

class DesktopHelloScreen extends StatefulWidget {
  const DesktopHelloScreen({super.key});

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
          Container(
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
                  height: 26.h(context),
                  width: 145.w(context),
                  centered: true,
                  style: TextStyle(
                    color: AppColors.codeColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 144.w(context),
                ),
                Container(
                  width: 141.w(context),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.borderColor,
                    ),
                  ),
                  child: Column(
                    children: [
                      Spacer(),
                      AppText(
                        text: '_hello',
                        centered: true,
                        style: TextStyle(
                          fontSize: 16.t(context),
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 3,
                        color: AppColors.orangeColor,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 160.w(context),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.borderColor,
                    ),
                  ),
                  child: Center(
                    child: AppText(
                      text: '_about-me',
                      centered: true,
                      style: TextStyle(
                        color: AppColors.codeColor,
                        fontSize: 16.t(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 160.w(context),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.borderColor,
                    ),
                  ),
                  child: Center(
                    child: AppText(
                      text: '_projects',
                      centered: true,
                      style: TextStyle(
                        fontSize: 16.t(context),
                        color: AppColors.codeColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  width: 160.w(context),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.borderColor,
                    ),
                  ),
                  child: Center(
                    child: AppText(
                      text: '_contact-me',
                      centered: true,
                      style: TextStyle(
                        fontSize: 16.t(context),
                        color: AppColors.codeColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
                  AppText(
                    text: '> Developer',
                    width: 415.w(context),
                    height: 42.h(context),
                    style: TextStyle(
                      color: AppColors.purpleColor,
                      fontSize: 32.t(context),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 81.h(context),
                  ),
                  AppText(
                    text: '// complete the game to continue',
                    width: 335.w(context),
                    style: TextStyle(
                      fontSize: 16.t(context),
                      color: AppColors.codeColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10.h(context),
                  ),
                  AppText(
                    text: '// you can also see it on my Github page',
                    width: 400.w(context),
                    style: TextStyle(
                      fontSize: 16.t(context),
                      color: AppColors.codeColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10.h(context),
                  ),
                  AppRichText(
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
                          text: 'https://github.com/Malay1121',
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
                ],
              ),
              SizedBox(
                width: 79.w(context),
              ),
              Image.asset(
                AppStrings.backgroundBlur,
                height: 742.27.h(context),
                width: 779.6.w(context),
              ),
            ],
          ),
          Spacer(),
          Container(
            height: 55.19.h(context),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.borderColor,
              ),
            ),
            child: Row(
              children: [
                AppText(
                  text: 'find me in:',
                  height: 26.h(context),
                  width: 150.w(context),
                  centered: true,
                  style: TextStyle(
                    color: AppColors.codeColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  width: 55.19.h(context),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.borderColor,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      AppStrings.icLinkedin,
                    ),
                  ),
                ),
                Container(
                  width: 55.19.h(context),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.borderColor,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      AppStrings.icStackoverflow,
                    ),
                  ),
                ),
                Container(
                  width: 55.19.h(context),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.borderColor,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      AppStrings.icInstagram,
                    ),
                  ),
                ),
                Container(
                  width: 55.19.h(context),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.borderColor,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      AppStrings.icMedium,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  width: 161.w(context),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.borderColor,
                    ),
                  ),
                  child: Center(
                    child: AppText(
                      text: '@Malay1121',
                      centered: true,
                      style: TextStyle(
                        fontSize: 16.t(context),
                        color: AppColors.codeColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
