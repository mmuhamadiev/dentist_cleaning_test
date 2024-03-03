import 'package:dentist_cleeaning/config/app_colors.dart';
import 'package:dentist_cleeaning/config/app_text_styles.dart';
import 'package:dentist_cleeaning/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

Container continueBtn(Function() onPressed) {
  return Container(
    width: 331.w,
    height: 45.h,
    margin: EdgeInsets.only(bottom: 34.h),
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryBlue
        ),
        onPressed: onPressed, child:
    Container(
      width: 130.w,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('продолжить'.toUpperCase(), style: AppTextStyles.sansPro15White,),
          Gap(5.w),
          Container(
              margin: const EdgeInsets.only(bottom: 3),
              child: Image.asset(Assets.iconsForward, width: 12.w, height: 10.h,))
        ],
      ),
    )),
  );
}
