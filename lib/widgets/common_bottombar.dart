import 'package:flutter/material.dart';
import 'package:flutter_responsive_helper/flutter_responsive_helper.dart';
import 'package:url_launcher/url_launcher.dart';

import '../helper/helper.dart';
import 'common_textfield.dart';

class CommonBottombar extends StatefulWidget {
  CommonBottombar({super.key, this.tabBar = false});

  bool tabBar = false;

  @override
  State<CommonBottombar> createState() => _CommonBottombarState();
}

class _CommonBottombarState extends State<CommonBottombar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.tabBar)
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: AppText(
              text: 'find me in:',
              style: TextStyle(
                color: AppColors.codeColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!widget.tabBar)
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: AppText(
                  text: 'find me in:',
                  style: TextStyle(
                    color: AppColors.codeColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            // if (widget.tabBar) Spacer(),
            Container(
              height: 55.19.h(context),
              width: 55.19.h(context),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.borderColor,
                ),
              ),
              child: Center(
                child: Image.asset(
                  AppStrings.icLinkedin,
                  height: 30.h(context),
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                if (await canLaunchUrl(
                    Uri.parse('https://github.com/Malay1121'))) {
                  await launchUrl(Uri.parse('https://github.com/Malay1121'));
                }
              },
              child: Container(
                height: 55.19.h(context),
                width: 55.19.h(context),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.borderColor,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    AppStrings.icStackoverflow,
                    height: 30.h(context),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                if (await canLaunchUrl(
                    Uri.parse('https://github.com/Malay1121'))) {
                  await launchUrl(Uri.parse('https://github.com/Malay1121'));
                }
              },
              child: Container(
                width: 55.19.h(context),
                height: 55.19.h(context),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.borderColor,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    AppStrings.icInstagram,
                    height: 30.h(context),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                if (await canLaunchUrl(
                    Uri.parse('https://github.com/Malay1121'))) {
                  await launchUrl(Uri.parse('https://github.com/Malay1121'));
                }
              },
              child: Container(
                height: 55.19.h(context),
                width: 55.19.h(context),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.borderColor,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    AppStrings.icMedium,
                    height: 30.h(context),
                  ),
                ),
              ),
            ),
            if (!widget.tabBar) Spacer(),
            InkWell(
              onTap: () async {
                if (await canLaunchUrl(
                    Uri.parse('https://github.com/Malay1121'))) {
                  await launchUrl(Uri.parse('https://github.com/Malay1121'));
                }
              },
              child: widget.tabBar
                  ? Container(
                      height: 55.19.h(context),
                      width: 55.19.h(context),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.borderColor,
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          AppStrings.icGithub,
                          height: 30.h(context),
                        ),
                      ),
                    )
                  : Container(
                      height: 55.19.h(context),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.borderColor,
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppText(
                                text: 'Malay1121',
                                style: TextStyle(
                                  fontSize: 16.t(context),
                                  color: AppColors.codeColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Image.asset(
                                AppStrings.icGithub,
                                width: 24.t(context),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ],
    );
  }
}
