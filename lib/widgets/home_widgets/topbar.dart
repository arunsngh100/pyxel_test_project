import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/assets.dart';
import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 54.w,
          height: 54.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.whiteLight,
          ),
          child: SvgPicture.asset(Assets.humanSvg),
        ),
        SizedBox(
          width: 13.5.w,
        ),
        Text(
          title,
          style: AppTextStyles.font18SemiBold,
        ),
        const Spacer(),
        Container(
          width: 50.w,
          height: 50.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.blueLight,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 15.h,
              left: 15.w,
              right: 15.w,
              bottom: 15.h,
            ),
            child: SvgPicture.asset(
              Assets.searchSvg,
            ),
          ),
        ),
      ],
    );
  }
}
