import 'package:conigecgo/helpers./extension/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Style {
  Style();

  static ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColorLight: const Color(0xff44C662),
    primaryColorDark: const Color(0xffF23A3A),
    primaryColor: const Color(0xff5AFFE7),
    colorScheme: const ColorScheme.highContrastLight().copyWith(
      primary: const Color(0xff726EFF),
      secondary: const Color(0xffffc947),
      onSecondary: const Color(0xff000000).withOpacity(0.35),
    ),
    scaffoldBackgroundColor: const Color(0xffffffff),
    secondaryHeaderColor: const Color(0xfff2f2f2),
    dividerColor: const Color(0xff9DA3AC).withOpacity(0.2),
    focusColor: const Color(0xffFFC947),
    cardColor: const Color(0xffF5F8FD),
    indicatorColor: const Color(0xff000000),
    hoverColor: const Color.fromRGBO(253, 244, 236, 1.0),
    unselectedWidgetColor: const Color(0xff9DA3AC),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: ThemeData.light().textSelectionTheme.selectionColor,
      cursorColor: ThemeData.light().textSelectionTheme.cursorColor,
      selectionHandleColor:
          ThemeData.light().textSelectionTheme.selectionHandleColor,
    ),
    dialogBackgroundColor: ThemeData.dark().dialogBackgroundColor,
    highlightColor: const Color.fromRGBO(240, 148, 72, 1.0),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(color: Color(0xff0A1931)),
    ),
    buttonTheme: const ButtonThemeData().copyWith(
      buttonColor: const Color(0xfffa6400),
      highlightColor: const Color(0xff000000).withOpacity(0.25),
    ),
    iconTheme: const IconThemeData.fallback().copyWith(
      color: const Color(0xff0a1931),
    ),
    appBarTheme: AppBarTheme(
      color: const Color(0xff0a1931),
      iconTheme: const IconThemeData.fallback().copyWith(
        color: const Color(0xff0a1931),
      ),
      actionsIconTheme: const IconThemeData.fallback().copyWith(
        color: const Color.fromRGBO(247, 247, 247, 1.0),
      ),
    ),
    dialogTheme: const DialogTheme().copyWith(
      backgroundColor: const Color(0xffffffff),
      titleTextStyle: const TextStyle(color: Color(0xff0A1931)),
      contentTextStyle: const TextStyle(color: Color(0xff0A1931)),
    ),
    shadowColor: const Color.fromRGBO(13, 63, 103, 0.1),
    disabledColor: const Color(0xff9DA3AC).withOpacity(0.3),
    hintColor: const Color(0xff9DA3AC),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: const Color(0xff64CEB9),
    primaryColorLight: const Color(0xff81D433),
    primaryColorDark: const Color(0xffEF3C31),
    colorScheme: const ColorScheme.highContrastDark().copyWith(
      primary: const Color(0xff465DDD),
      secondary: const Color(0xff64CEB9),
      onSecondary: const Color.fromRGBO(179, 179, 179, 1.0),
    ),
    cardColor: const Color(0xff353945),
    disabledColor: const Color(0xff455a82),
    indicatorColor: const Color.fromRGBO(255, 255, 255, 1.0),
    hoverColor: const Color.fromRGBO(64, 53, 44, 1.0),
    unselectedWidgetColor: const Color.fromRGBO(110, 135, 172, 1.0),
    secondaryHeaderColor: ThemeData.dark().secondaryHeaderColor,
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: ThemeData.dark().textSelectionTheme.selectionColor,
      cursorColor: ThemeData.dark().textSelectionTheme.cursorColor,
      selectionHandleColor:
          ThemeData.dark().textSelectionTheme.selectionHandleColor,
    ),
    dialogBackgroundColor: ThemeData.dark().dialogBackgroundColor,
    hintColor: const Color(0xff777E90),
    //Neutrals 5
    highlightColor: const Color(0xffFFC24B),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(color: Color(0xffFCFCFD)),
    ),
    buttonTheme: const ButtonThemeData().copyWith(
      buttonColor: const Color(0xff64CEB9),
      highlightColor: const Color(0xff000000).withOpacity(0.25),
      disabledColor: const Color.fromRGBO(30, 31, 32, 1.0),
    ),
    iconTheme: const IconThemeData.fallback().copyWith(
      color: const Color(0xffFCFCFD),
    ),
    appBarTheme: AppBarTheme(
      color: const Color(0xffededed),
      iconTheme: const IconThemeData.fallback().copyWith(
        color: const Color.fromRGBO(247, 247, 247, 1.0),
      ),
      actionsIconTheme: const IconThemeData.fallback().copyWith(
        color: const Color.fromRGBO(247, 247, 247, 1.0),
      ),
    ),
    dialogTheme: const DialogTheme().copyWith(
      backgroundColor: const Color.fromRGBO(24, 24, 26, 1.0),
    ),
    shadowColor: const Color.fromRGBO(255, 255, 255, 0.16),
  );

  //Colors
  static const Color textHighLightColor = Color(0xff0A1931);
  static const Color appBackgroundColor = Color.fromRGBO(47, 52, 98, 1.0);
  static const Color appSecondBackgroundColor = Color.fromRGBO(30, 31, 32, 0.4);
  static const Color transparent = Color.fromRGBO(0, 0, 0, 0);
  static const Color transitionBackgroundColor = Color(0xff000000);
  static const Color pendingColor = Color.fromRGBO(255, 159, 67, 1.0);
  static const Color failedColor = Color.fromRGBO(255, 90, 117, 1.0);
  static const Color orangeColor = Color.fromRGBO(240, 148, 72, 1.0);

  static const Color shareTitleColor = Color.fromRGBO(255, 191, 0, 1);

  //Loading
  static const Color loadingBgColor = Color(0xFFFAFBFC);
  static const Color loadingIndicatorColor = Color(0xFFFFCB2A);

  //Widget
  static const Color btnDefaultTextColor = Colors.white;
  static const Color orange = Color(0xffFFC24B);
  static const Color btnDefaultBgColor = Color.fromRGBO(0, 159, 212, 1.0);
  static const Color textDefaultColor = Colors.white;
  static const Color textPrimaryColor = Color(0xff212B38);
  static const Color textWhiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color whiteColor = Colors.white;
  static const Color lineDivideColor = Color.fromRGBO(117, 117, 117, 0.08);

  static const Color textFieldDefaultTextColor = Colors.white;
  static const Color textFieldPlaceholderDefaultTextColor =
      Color.fromRGBO(117, 117, 117, 1.0);
  static const Color textFieldDefaultBgColor = Color.fromRGBO(30, 31, 32, 0.5);
  static const Color textFieldUnderLineDefaultColor = Color(0xFFD8D8D8);
  static const Color textFieldUnderLineFocusColor = Color(0xFF232223);

  static Color indicatorInactiveBgColor = Colors.white.withOpacity(0.3);
  static const Color indicatorActiveBgColor = Colors.white;

  static const Color bottomNavigationBgColor = Colors.white;
  static const Color bottomNavigationSelectedColor =
      Color.fromRGBO(0, 159, 212, 1.0);
  static const Color bottomNavigationUnSelectedColor = Colors.white;

  //Dialog
  static const Color dialogButtonYesBgColor = Color(0xfffa6400);
  static const Color dialogButtonNoBgColor = Colors.white;
  static const Color dialogButtonYesTextColor = Colors.white;
  static const Color dialogButtonNoTextColor = Color(0xfffa6400);
  static const Color dialogButtonBorderColor = Color(0xfffa6400);
  static const Color dialogButtonShadowColor =
      Color.fromRGBO(109, 110, 237, 0.15);
  static const Color dialogDescriptionTextColor = Color(0xFF59649e);
  static const Color dialogTitleTextColor = Color(0xFF59649e);
  static const Color shadowPurpleColor = Color.fromRGBO(109, 110, 237, 0.3);
  static const Color toastWarningBgColor = Color(0xf0ffec3d);
  static const Color toastErrorBgColor = Color(0xf0f5222d);
  static const Color toastSuccessBgColor = Color(0xf0a0d911);
  static const Color colorRed2 = Color(0xffF6958F);

  static const gradientColorMain = [Color(0xffFCEFD1), Color(0xff93DDCE)];
  static const gradientColorCard = [
    Color.fromRGBO(100, 206, 185, 0.15),
    Color.fromRGBO(96, 195, 176, 0)
  ];
  static const gradientColorGlass = [
    Color.fromRGBO(20, 20, 22, 0.49),
    Color.fromRGBO(20, 20, 22, 1)
  ];

  //Border
  static const borderMainChartIncrease = Color.fromRGBO(100, 212, 255, 1.0);
  static const borderMainChartDecrease = Color.fromRGBO(255, 90, 117, 1.0);
  static const borderMainChart = Color(0xf0ffec3d);

  //Shadow
  static Color shadowBtnDefaultColor = const Color(0xFF000000).withOpacity(0.1);
  static Color shadowSplashBgColor = const Color(0xFFffffff).withOpacity(0.11);
  static Color shadowNewSignalColor = const Color(0xFF848484).withOpacity(0.5);
  static Color shadowModalColor = const Color(0xFF000000).withOpacity(0.5);
  static Color shadowPremium = const Color.fromRGBO(255, 107, 0, 0.4);

  //Text style
  static const String fontMedium = "ChakraPetch-Medium";
  static const String fontDemiBold = "ChakraPetch-SemiBold";
  static const String fontRegular = "ChakraPetch-Regular";
  static const String fontBold = "ChakraPetch-Bold";

  TextStyle textStyle({
    double? height,
    double? letterSpacing,
    double? fontSize,
    String? fontFamily,
    Color? color,
  }) =>
      TextStyle(
        color: color ?? Get.context?.textTheme.headlineMedium!.color,
        fontFamily: fontFamily ?? fontDemiBold,
        fontSize: fontSize ?? 14.sp,
      );

  TextStyle headline5Neutrals1 = TextStyle(
    color: Get.context?.textTheme.headlineMedium!.color,
    fontFamily: fontBold,
    fontSize: 20.sp,
    letterSpacing: -0.01,
  );

  TextStyle largeBoldNeutrals1 = TextStyle(
    color: Get.context?.textTheme.headlineMedium!.color,
    fontFamily: fontDemiBold,
    fontSize: 24.sp,
  );
}
