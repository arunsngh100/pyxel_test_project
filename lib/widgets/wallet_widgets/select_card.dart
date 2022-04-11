import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class SelectCardWidget extends StatelessWidget {
  const SelectCardWidget({
    Key? key,
    required this.channelUrl,
    required this.selected,
    required this.title,
  }) : super(key: key);
  final String channelUrl;
  final String title;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        5.sp,
      ),
      child: Container(
        height: 37.h,
        width: 151.w,
        color: selected == true ? AppColors.blueDark : AppColors.greyMedium,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              channelUrl,
            ),
            Text(
              title,
              maxLines: 1,
              style: AppTextStyles.font12SemiBold.copyWith(
                color:
                    selected == true ? AppColors.whiteText : AppColors.greyText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
