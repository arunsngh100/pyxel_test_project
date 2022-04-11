import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pyxl_test_project/constants/assets.dart';
import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class RecentActivityTileWidget extends StatelessWidget {
  const RecentActivityTileWidget({
    Key? key,
    required this.amount,
    required this.color,
    required this.date,
    required this.name,
    required this.time,
    required this.amountLeading,
  }) : super(key: key);
  final String name;
  final String date;
  final String amount;
  final String time;
  final Color color;
  final String amountLeading;

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
          width: 13.15.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: AppTextStyles.font14SemiBold.copyWith(
                color: AppColors.blackText,
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Text(
              date,
              style: AppTextStyles.font12SemiBold.copyWith(
                color: AppColors.greyText,
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "$amountLeading \$$amount",
              style: AppTextStyles.font14SemiBold.copyWith(
                color: color,
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Text(
              time,
              style: AppTextStyles.font12SemiBold.copyWith(
                color: AppColors.greyText,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
