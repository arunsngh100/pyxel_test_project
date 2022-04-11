import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/assets.dart';
import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class WalletTopBarWidget extends StatelessWidget {
  const WalletTopBarWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Text(
          'Wallets',
          style: AppTextStyles.font24SemiBold.copyWith(
            color: AppColors.blackText,
          ),
        ),
        SizedBox(
          width: 89.w,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
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
                Assets.addSvg,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
