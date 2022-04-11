import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';

class ActionButtonWidget extends StatelessWidget {
  const ActionButtonWidget({
    Key? key,
    required this.assetUrl,
    required this.width,
  }) : super(key: key);
  final String assetUrl;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        5.sp,
      ),
      child: Container(
        height: 48.h,
        width: width,
        color: AppColors.greyLight,
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            bottom: 14.h,
            right: 16.w,
            top: 14.h,
          ),
          child: SvgPicture.asset(
            assetUrl,
          ),
        ),
      ),
    );
  }
}
