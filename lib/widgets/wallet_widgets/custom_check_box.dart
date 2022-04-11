import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/assets.dart';

class CustomCheckBoxWidget extends StatelessWidget {
  const CustomCheckBoxWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      width: 20.w,
      child: Stack(
        children: [
          SvgPicture.asset(
            Assets.checkBoxSvg,
          ),
          Positioned(
            top: 8.h,
            left: 6.w,
            right: 6.w,
            bottom: 7.56.h,
            child: SvgPicture.asset(
              Assets.tickSvg,
            ),
          ),
        ],
      ),
    );
  }
}
