import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/assets.dart';
import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        5.sp,
      ),
      child: Container(
        height: 50.h,
        width: 364.w,
        color: AppColors.whiteText,
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: EdgeInsets.only(
                top: 15.h,
                right: 13.w,
                bottom: 15.h,
              ),
              child: SvgPicture.asset(
                Assets.shieldSvg,
              ),
            ),
            contentPadding: EdgeInsets.only(
              left: 10.w,
              top: 18.h,
              right: 10.w,
              bottom: 18.h,
            ),
            border: InputBorder.none,
            hintText: "Type name/card/phone number/email",
            hintStyle: AppTextStyles.font10SemiBold.copyWith(
              color: AppColors.greyText,
            ),
          ),
        ),
      ),
    );
  }
}
