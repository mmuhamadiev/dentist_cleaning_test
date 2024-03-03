import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

abstract class AppTextStyles {
  const AppTextStyles._();

  static const String fontFamilyDrukCyrMedium = 'DrukCyrMedium';
  static const String fontFamilySourceSansProRegular = 'SourceSansProRegular';

  static TextStyle sansProHeader27 = TextStyle(
      fontWeight: FontWeight.w500,
      fontFamily: fontFamilySourceSansProRegular,
      fontSize: 25.sp,
      color: AppColors.white,
      height: 1,
  );

  static TextStyle sansProSmall = TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: fontFamilySourceSansProRegular,
      fontSize: 9.sp,
      color: AppColors.customPurple
  );

  static TextStyle sansPro15Black = TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: fontFamilySourceSansProRegular,
      fontSize: 14.sp,
      color: AppColors.customBlackText
  );

  static TextStyle sansPro15White = TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: fontFamilySourceSansProRegular,
      fontSize: 14.sp,
      color: AppColors.white
  );

  static TextStyle sansPro14Black = TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: fontFamilySourceSansProRegular,
      fontSize: 12.sp,
      color: AppColors.customBlackText
  );

  static TextStyle sansPro14White = TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: fontFamilySourceSansProRegular,
      fontSize: 12.sp,
      color: AppColors.white
  );

  static TextStyle drukCyrH1 = TextStyle(
      fontWeight: FontWeight.w500,
      fontFamily: fontFamilyDrukCyrMedium,
      fontSize: 30.sp,
      color: AppColors.customBlackText
  );
}
