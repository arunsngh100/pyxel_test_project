import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/assets.dart';
import '../../constants/colors.dart';

class ChooseRecipientWidget extends StatelessWidget {
  const ChooseRecipientWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 54.w,
          height: 54.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.whiteText,
          ),
          child: SvgPicture.asset(Assets.humanSvg),
        ),
        SizedBox(
          width: 10.25.w,
        ),
        Container(
          width: 54.w,
          height: 54.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.whiteText,
          ),
          child: SvgPicture.asset(Assets.humanSvg),
        ),
        SizedBox(
          width: 10.25.w,
        ),
        Container(
          width: 54.w,
          height: 54.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.whiteText,
          ),
          child: SvgPicture.asset(Assets.humanSvg),
        ),
        SizedBox(
          width: 10.25.w,
        ),
        Container(
          width: 54.w,
          height: 54.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.whiteText,
          ),
          child: SvgPicture.asset(Assets.humanSvg),
        ),

        SizedBox(
          width: 10.25.w,
        ),
      ],
    );
  }
}
