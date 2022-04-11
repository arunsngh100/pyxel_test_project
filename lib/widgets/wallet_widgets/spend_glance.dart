import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class SpendGlanceWidget extends StatelessWidget {
  const SpendGlanceWidget({
    Key? key,
    required this.amount,
    required this.title,
  }) : super(key: key);
  final String title;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69.h,
      width: 116.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5.sp,
        ),
        border: Border.all(
          color: AppColors.greyText.withOpacity(0.3),
          width: 1.w,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 10.w,
          right: 10.w,
          top: 10.h,
          bottom: 10.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyles.font12SemiBold.copyWith(
                color: AppColors.blackText,
              ),
            ),
            Text(
              "\$$amount",
              maxLines: 1,
              style: AppTextStyles.font18SemiBold.copyWith(
                color: AppColors.blackText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
