import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/colors.dart';

class HorizontalBarWidget extends StatelessWidget {
  const HorizontalBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(
            100.sp,
          ),
          child: Container(
            height: 27.h,
            width: 3.w,
            color: AppColors.blueDark.withOpacity(
              0.05,
            ),
          ),
        ),
        SizedBox(
          width: 26.w,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(
            100.sp,
          ),
          child: Container(
            height: 32.h,
            width: 3.w,
            color: AppColors.blueDark.withOpacity(
              0.1,
            ),
          ),
        ),
        SizedBox(
          width: 26.w,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(
            100.sp,
          ),
          child: Container(
            height: 37.h,
            width: 3.w,
            color: AppColors.blueDark.withOpacity(
              0.2,
            ),
          ),
        ),
        SizedBox(
          width: 26.w,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(
            100.sp,
          ),
          child: Container(
            height: 42.h,
            width: 3.w,
            color: AppColors.blueDark.withOpacity(
              0.4,
            ),
          ),
        ),
        SizedBox(
          width: 26.w,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(
            100.sp,
          ),
          child: Container(
            height: 47.h,
            width: 3.w,
            color: AppColors.blueDark.withOpacity(
              0.6,
            ),
          ),
        ),
        SizedBox(
          width: 26.w,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(
            100.sp,
          ),
          child: Container(
            height: 52.h,
            width: 3.w,
            color: AppColors.blueDark.withOpacity(
              0.8,
            ),
          ),
        ),
        SizedBox(
          width: 26.w,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(
            100.sp,
          ),
          child: Container(
            height: 57.h,
            width: 3.w,
            color: AppColors.blueDark,
          ),
        ),
        SizedBox(
          width: 26.w,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(
            100.sp,
          ),
          child: Container(
            height: 52.h,
            width: 3.w,
            color: AppColors.blueDark.withOpacity(
              0.8,
            ),
          ),
        ),
        SizedBox(
          width: 26.w,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(
            100.sp,
          ),
          child: Container(
            height: 47.h,
            width: 3.w,
            color: AppColors.blueDark.withOpacity(
              0.6,
            ),
          ),
        ),
        SizedBox(
          width: 26.w,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(
            100.sp,
          ),
          child: Container(
            height: 42.h,
            width: 3.w,
            color: AppColors.blueDark.withOpacity(
              0.4,
            ),
          ),
        ),
        SizedBox(
          width: 26.w,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(
            100.sp,
          ),
          child: Container(
            height: 37.h,
            width: 3.w,
            color: AppColors.blueDark.withOpacity(
              0.2,
            ),
          ),
        ),
        SizedBox(
          width: 26.w,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(
            100.sp,
          ),
          child: Container(
            height: 32.h,
            width: 3.w,
            color: AppColors.blueDark.withOpacity(
              0.1,
            ),
          ),
        ),
      ],
    );
  }
}
