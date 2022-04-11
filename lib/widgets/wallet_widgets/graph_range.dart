import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class GraphRangeWidget extends StatelessWidget {
  const GraphRangeWidget({
    Key? key,
    required this.active,
    required this.title,
  }) : super(key: key);
  final String title;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppTextStyles.font12SemiBold.copyWith(
            color: active == true ? AppColors.blackText : AppColors.greyText,
          ),
        ),
        Container(
          width: 8.w,
          height: 8.h,
          decoration: BoxDecoration(
            color: active == true ? AppColors.blueDark : AppColors.greyLight,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
