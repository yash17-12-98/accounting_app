import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'resources.dart';

ThemeData getApplicationTheme() {
  return ThemeData(

      // main colors of the app
      scaffoldBackgroundColor: ColorManager.white,
      useMaterial3: true,
      primaryColor: ColorManager.primary,
      disabledColor: ColorManager.grey,

      // ripple color
      splashColor: ColorManager.primaryOpacity70,

      // App bar theme
      appBarTheme: AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark),
          color: ColorManager.transparent,
          elevation: AppSize.s0,
          shadowColor: ColorManager.transparent,
          titleTextStyle: getRegularStyle(
              color: ColorManager.black, fontSize: FontSize.s18)),
      drawerTheme: DrawerThemeData(backgroundColor: ColorManager.white),

      // Button theme
      buttonTheme: ButtonThemeData(
          minWidth: double.infinity,
          height: 55.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s13)),
          disabledColor: ColorManager.grey,
          buttonColor: ColorManager.primary),

      // elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(color: ColorManager.white),
              backgroundColor: ColorManager.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12)))),
      listTileTheme: ListTileThemeData(
          titleTextStyle: getBoldStyle(
              color: ColorManager.primary, fontSize: FontSize.s17)),
      // Text theme
      textTheme: TextTheme(
          headlineMedium: getRegularStyle(
              color: ColorManager.primary, fontSize: FontSize.s14),
          titleLarge:
              getBoldStyle(color: ColorManager.black, fontSize: FontSize.s22),
          titleMedium: getMediumStyle(
              color: ColorManager.mediumGrey, fontSize: FontSize.s14),
          titleSmall: getRegularStyle(
              color: ColorManager.mediumGrey, fontSize: FontSize.s14),
          labelMedium: getSemiBoldStyle(
              color: ColorManager.darkGrey, fontSize: FontSize.s15),
          labelSmall: getRegularStyle(
              color: ColorManager.darkGrey, fontSize: FontSize.s15),
          labelLarge: getSemiBoldStyle(
              color: ColorManager.black, fontSize: FontSize.s17),
          bodyMedium: getMediumStyle(color: ColorManager.lightGrey),
          bodySmall: getRegularStyle(color: ColorManager.grey),
          bodyLarge: getRegularStyle(color: ColorManager.grey)),

      // input decoration theme (text form field)
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p14, vertical: AppPadding.p20),
        // hint style
        hintStyle: getRegularStyle(
            color: ColorManager.lightGrey, fontSize: FontSize.s14),

        // label style
        labelStyle: getMediumStyle(color: ColorManager.grey),
        // error style
        errorStyle: getRegularStyle(color: ColorManager.error),

        // enabled border
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.lightGrey, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // focused border
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // error border
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.error, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // focused error border
        focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      ));
}
