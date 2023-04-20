import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  var currentTab = 0.obs;
  List<Widget> children = [
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  void onInit() async {
    super.onInit();
  }

  void switchTab(index) {
    currentTab.value = index;
  }

  Widget get currentPage => children[currentTab.value];
}
