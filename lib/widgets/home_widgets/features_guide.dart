import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class FeaturesGuideWidget extends StatelessWidget {
  const FeaturesGuideWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title, style: AppTextStyles.font18SemiBold),
        Text(
          subtitle,
          style: AppTextStyles.font12SemiBold.copyWith(
            color: AppColors.blackText,
          ),
        ),
      ],
    );
  }
}
