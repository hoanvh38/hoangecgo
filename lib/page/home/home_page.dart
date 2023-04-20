import 'package:conigecgo/constants/app_constant.dart';
import 'package:conigecgo/helpers./extension/responsive.dart';
import 'package:conigecgo/page/home/home.dart';
import 'package:conigecgo/style/app_style.dart';
import 'package:conigecgo/utils/screen_util.dart';
import 'package:conigecgo/widget/animatedBottomNavigationBar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: BASE_WIDTH, allowFontScaling: true)
      ..init(context);
    return Material(
      child: WillPopScope(
          onWillPop: () async {
            return true;
          },
          child: Obx(
            () => Scaffold(
              bottomNavigationBar: AnimatedBottomNavigationBar.builder(
                itemCount: controller.children.length,
                tabBuilder: (int index, bool isActive) {
                  return _buildBottomNavBar(context, isActive)[index];
                },
                activeIndex: controller.currentTab.value,
                splashColor: context.theme.primaryColor,
                splashSpeedInMilliseconds: 300,
                notchSmoothness: NotchSmoothness.defaultEdge,
                gapLocation: GapLocation.none,
                onTap: controller.switchTab,
              ),
            ),
          )),
    );
  }

  List<Widget> _buildBottomNavBar(BuildContext context, bool isActive) {
    return [
      _buildBottomNavigationBarItem(
        context,
        'tab_home'.tr,
        Icons.home,
        0,
        isActive,
      ),
      _buildBottomNavigationBarItem(
        context,
        'tab_home'.tr,
        Icons.star_border,
        0,
        isActive,
      ),
      _buildBottomNavigationBarItem(
        context,
        'tab_post'.tr,
        Icons.search,
        1,
        isActive,
      ),
      _buildBottomNavigationBarItem(
        context,
        'tab_message'.tr,
        Icons.explore_outlined,
        2,
        isActive,
      ),
      _buildBottomNavigationBarItem(
        context,
        'tab_me'.tr,
        Iconsax.more,
        3,
        isActive,
      ),
    ];
  }

  Widget _buildBottomNavigationBarItem(BuildContext context, String title,
      IconData iconUri, int idx, bool active) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedCrossFade(
            crossFadeState:
                active ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 250),
            firstChild: Icon(
              iconUri,
              size: 20.w,
              color: context.theme.primaryColorLight,
            ),
            secondChild: Icon(
              iconUri,
              size: 20.w,
              color: context.theme.unselectedWidgetColor,
            )),
        // SizedBox(height: 4.w),
        Text(
          title,
          style: Style().headline5Neutrals1,
        )
      ],
    );
  }
}
