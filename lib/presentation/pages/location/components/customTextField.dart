import 'package:dentist_cleeaning/config/app_text_styles.dart';
import 'package:dentist_cleeaning/presentation/pages/location/manager/location_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SizedBox customTextField(BuildContext context, double? width, String hintText, TextEditingController controller, TextInputType textInputType) {
  return SizedBox(
    height: 48.h,
    width: width,
    child: TextFormField(
      controller: controller,
      keyboardType: textInputType,
      textInputAction: TextInputAction.next,
      validator: (value) {
        if (value == null || value.isEmpty) {
          context.read<LocationCubit>().validate('*Не найдено такой улицы\n*Поля обязательные для заполнения');
        } else {
          context.read<LocationCubit>().validate('');
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyles.sansPro15Black,
      ),
    ),
  );
}