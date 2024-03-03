import 'package:dentist_cleeaning/config/app_colors.dart';
import 'package:dentist_cleeaning/config/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

Future saveAddressDialog(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Dialog(
        insetPadding: EdgeInsets.all(20.h),
        child: Container(
          height: 235.h,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20.r)
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ListBody(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Gap(20.h),
                  Text(
                    'АДРЕС ДОСТАВКИ',
                    style: AppTextStyles.drukCyrH1,
                    textAlign: TextAlign.center,
                  ),
                  Gap(10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      'Адрес доставки изменен, сохранить его как основной адрес доставки?',
                      style: AppTextStyles.sansPro15Black.copyWith(
                        height: 1.1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Gap(20.h),
                  SizedBox(
                    height: 42.h,
                    child: OutlinedButton(
                      onPressed: () {
                        context.pop(); // Close the dialog
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: AppColors.white,
                        side: const BorderSide(
                          color: AppColors.primaryBlue
                        )
                      ),
                      child: Text('НЕ МЕНЯТЬ', style: AppTextStyles.sansPro14Black,),
                    ),
                  ),
                  Gap(7.h),
                  SizedBox(
                    height: 42.h,
                    child: OutlinedButton(
                      onPressed: () {
                       context.pop();
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide.none,
                        backgroundColor: AppColors.primaryBlue,
                      ),
                      child: Text('СОХРАНИТЬ И ПРОДОЛЖИТЬ' , style: AppTextStyles.sansPro14White,),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // buttonPadding: EdgeInsets.symmetric(horizontal: 10),
        // actionsAlignment: MainAxisAlignment.spaceBetween,
      );
    },
  );
}