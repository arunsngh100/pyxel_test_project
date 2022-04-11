import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

//<--------------------Contains all the textstyles used in the app------------------------>
abstract class AppTextStyles {
  static TextStyle font18SemiBold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.blackText,
  );

  static TextStyle font14SemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.blueLightText,
  );

  static TextStyle font36SemiBold = TextStyle(
    fontSize: 36.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteText,
  );
  static TextStyle font12SemiBold = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.greyText,
  );

  static TextStyle font24SemiBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.blackText,
  );
  static TextStyle font10SemiBold = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteText,
  );
}
