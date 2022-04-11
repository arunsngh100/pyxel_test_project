import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/assets.dart';
import '../../constants/text_styles.dart';

class CardBalanceWidget extends StatelessWidget {
  const CardBalanceWidget({
    Key? key,
    required this.backgroundColor,
    required this.balance,
    required this.cardName,
    required this.cardNumber,
    required this.channelIconUrl,
    required this.expiryDate,
    required this.lineColor,
    required this.textColor,
    required this.balanceColor,
  }) : super(key: key);
  final String channelIconUrl;
  final String cardName;
  final String cardNumber;
  final String expiryDate;
  final String balance;
  final Color backgroundColor;
  final Color lineColor;
  final Color textColor;
  final Color balanceColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        5.sp,
      ),
      child: Container(
        height: 162.h,
        width: 176.w,
        color: backgroundColor,
        child: Padding(
          padding: EdgeInsets.only(
            left: 10.w,
            top: 11.h,
            right: 10.w,
            bottom: 11.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
//<------------------Upper part------------------->
              Row(
                children: [
                  SvgPicture.asset(channelIconUrl),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    cardName,
                    maxLines: 1,
                    style: AppTextStyles.font12SemiBold.copyWith(
                      color: textColor,
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    Assets.moreSvg,
                    color: textColor,
                  ),
                ],
              ),
              SizedBox(
                height: 17.19.h,
              ),
//<--------------------------Card detail part--------------------------->
              Container(
                height: 1.h,
                width: 156.w,
                color: textColor,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Number",
                        style: AppTextStyles.font10SemiBold.copyWith(
                          color: textColor,
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        cardNumber,
                        style: AppTextStyles.font10SemiBold.copyWith(
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 11.5.w,
                  ),
                  Container(
                    height: 46.h,
                    width: 1.w,
                    color: textColor,
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Exp.",
                        style: AppTextStyles.font10SemiBold.copyWith(
                          color: textColor,
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        expiryDate,
                        style: AppTextStyles.font10SemiBold.copyWith(
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 1.h,
                width: 156.w,
                color: textColor,
              ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                "physical ebl card",
                style: AppTextStyles.font12SemiBold.copyWith(
                  color: textColor,
                ),
              ),
              SizedBox(
                height: 0.31.h,
              ),
              Text(
                "\$$balance",
                maxLines: 1,
                style: AppTextStyles.font24SemiBold.copyWith(
                  color: balanceColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
