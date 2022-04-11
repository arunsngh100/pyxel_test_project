import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/assets.dart';
import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class ExpandGuideWidget extends StatelessWidget {
  const ExpandGuideWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Recent activity", style: AppTextStyles.font18SemiBold),
        const Spacer(),
        Text(
          "All",
          style: AppTextStyles.font12SemiBold.copyWith(
            color: AppColors.blackText,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        SvgPicture.asset(
          Assets.downArrowSvg,
        )
      ],
    );
  }
}
