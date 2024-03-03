import 'package:dentist_cleeaning/config/app_colors.dart';
import 'package:dentist_cleeaning/config/app_text_styles.dart';
import 'package:dentist_cleeaning/generated/assets.dart';
import 'package:dentist_cleeaning/presentation/pages/location/components/continue_btn.dart';
import 'package:dentist_cleeaning/presentation/pages/location/components/customTextField.dart';
import 'package:dentist_cleeaning/presentation/pages/location/components/custom_app_bar.dart';
import 'package:dentist_cleeaning/presentation/pages/location/components/save_address_dialog.dart';
import 'package:dentist_cleeaning/presentation/pages/location/manager/location_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              expandedHeight: 200.h,
              collapsedHeight: 200.h,
              clipBehavior: Clip.none,
              floating: false,
              stretch: true,
              title: customAppBar(context),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  Assets.imagesBg, //place with your image URL
                  fit: BoxFit.cover,
                ),
                stretchModes: const [StretchMode.zoomBackground],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Gap(30.h),
                    Text(
                      'Сначала подтвердите свой адрес проживания',
                      style: AppTextStyles.sansPro15Black,
                    ),
                    Gap(15.h),
                    Text(
                      'Адрес доставки'.toUpperCase(),
                      style: AppTextStyles.drukCyrH1,
                    ),
                    Gap(15.h),
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            customTextField(context, null, 'Москва', context.read<LocationCubit>().cityTextController, TextInputType.text),
                            Gap(5.h),
                            customTextField(context, null, 'Ленина', context.read<LocationCubit>().streetTextController, TextInputType.text),
                            Gap(5.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                customTextField(context, 163.w, '119', context.read<LocationCubit>().address1TextController, TextInputType.number),
                                customTextField(context, 163.w, '15', context.read<LocationCubit>().address2TextController, TextInputType.number),
                              ],
                            ),
                            Gap(5.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                customTextField(context, 163.w, '3', context.read<LocationCubit>().address3TextController, TextInputType.number),
                                customTextField(context, 163.w, '01630', context.read<LocationCubit>().address4TextController, TextInputType.number),
                              ],
                            ),
                            Gap(5.h),
                          ],
                        )),
                    Gap(100.h),
                    BlocBuilder<LocationCubit, LocationState>(
                        builder: (context, state) {
                      return Container(
                          height: 30.h,
                          alignment: Alignment.center,
                          child: Text(
                            state.errorText,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.sansPro15White.copyWith(
                                color: AppColors.errorRed, fontSize: 11.sp),
                          ));
                    }),
                    Gap(5.h),
                    continueBtn(() {
                      if (_formKey.currentState!.validate()) {
                        if (context.read<LocationCubit>().state.errorText.isEmpty) {
                          saveAddressDialog(context);
                        }
                      }
                    })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
