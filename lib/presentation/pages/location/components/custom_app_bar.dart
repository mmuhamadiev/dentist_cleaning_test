import 'package:dentist_cleeaning/config/app_colors.dart';
import 'package:dentist_cleeaning/config/app_text_styles.dart';
import 'package:dentist_cleeaning/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Stack customAppBar(BuildContext context) {
  return Stack(
    alignment: Alignment.topCenter,
    children: [
      Container(
        height: 200.h,
        // width: 375.w,
        // decoration: const BoxDecoration(
        //     image: DecorationImage(image: AssetImage(Assets.imagesBg), fit: BoxFit.fitWidth)
        // ),
      ),
      Container(
        margin: EdgeInsets.only(top: 85.h),
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            Row(
              children: [
                BackButton(
                  onPressed: () {

                  },
                  color: AppColors.black,
                ),
                const Spacer(),
                Container(
                  width: 61.w,
                  height: 17.h,
                  margin: EdgeInsets.only(right: 5.w),
                  decoration: BoxDecoration(
                      color: AppColors.yellow,
                      borderRadius: BorderRadius.circular(10.r)
                  ),
                  alignment: Alignment.center,
                  child: Text('50 БАЛЛОВ', style: AppTextStyles.sansProSmall,),
                ),
                Container(
                  width: 39.w,
                  height: 39.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.primaryBlue,
                    ),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: ClipOval(
                    child: Image.asset(Assets.imagesProfile),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 21.h),
              // padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text('ПОПРОБУЙТЕ НОВОЕ СРЕДСТВО ДЛЯ ЧИСТКИ ЗУБОВ БЕСПЛАТНО', maxLines: 3, style: AppTextStyles.sansProHeader27,),
            )
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 75.h),
        child: Text('SEMPL!', style: AppTextStyles.drukCyrH1,),
      )
    ],
  );
}
