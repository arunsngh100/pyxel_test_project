import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({
    Key? key,
    required this.accountNumber,
    required this.addedCards,
    required this.balance,
    required this.name,
  }) : super(key: key);
  final String name;
  final String balance;
  final String addedCards;
  final String accountNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.w,
        right: 10.w,
        top: 10.h,
        bottom: 0.h,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Ebl titanium account",
                style: AppTextStyles.font14SemiBold,
              ),
              Text(
                name,
                style: AppTextStyles.font14SemiBold,
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "\$$balance",
            style: AppTextStyles.font36SemiBold,
          ),
          Text(
            "Total balance",
            style: AppTextStyles.font14SemiBold.copyWith(
              color: AppColors.whiteText,
            ),
          ),
          SizedBox(
            height: 29.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Added cards:$addedCards",
                style: AppTextStyles.font14SemiBold,
              ),
              Text(
                "Acc. no. $accountNumber",
                style: AppTextStyles.font14SemiBold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
