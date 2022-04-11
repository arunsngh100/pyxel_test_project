import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyxl_test_project/constants/assets.dart';
import 'package:pyxl_test_project/constants/colors.dart';
import 'package:pyxl_test_project/constants/text_styles.dart';
import '../../../widgets/home_widgets/topbar.dart';
import '../../../widgets/wallet_widgets/choose_recipient.dart';
import '../../../widgets/wallet_widgets/custom_check_box.dart';
import '../../../widgets/wallet_widgets/horizontal_slider.dart';
import '../../../widgets/wallet_widgets/search_container.dart';
import '../../../widgets/wallet_widgets/select_card.dart';

class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 23.5.w,
                right: 23.5.w,
              ),
              child: const TopBarWidget(
                title: "Good day, Zesan",
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(
                5.sp,
              ),
              child: Container(
                height: 768.h,
                width: 414.w,
                color: AppColors.greyLight,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 25.w,
                    right: 25.w,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 12.h,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          100.sp,
                        ),
                        child: Container(
                          height: 5.h,
                          width: 69.w,
                          color: AppColors.greyText,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        "Send money",
                        style: AppTextStyles.font24SemiBold,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Select card",
                            style: AppTextStyles.font18SemiBold,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      SizedBox(
                        width: 414.w,
                        height: 37.h,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            const SelectCardWidget(
                              title: "Physical ebl card",
                              selected: true,
                              channelUrl: Assets.mastercardSvg,
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            const SelectCardWidget(
                              title: "Virtual ebl card",
                              selected: false,
                              channelUrl: Assets.visaSvg,
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            const SelectCardWidget(
                              title: "Physical ebl card",
                              selected: false,
                              channelUrl: Assets.mastercardSvg,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Choose recipient",
                            style: AppTextStyles.font18SemiBold,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      const SearchContainer(),
                      SizedBox(
                        height: 10.65.h,
                      ),
                      const ChooseRecipientWidget(),
                      SizedBox(
                        height: 18.17.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Amount",
                            style: AppTextStyles.font18SemiBold,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          5.sp,
                        ),
                        child: Container(
                          height: 156.h,
                          width: 364.w,
                          color: AppColors.whiteText,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                "\$75.00",
                                style: AppTextStyles.font36SemiBold
                                    .copyWith(color: AppColors.blackText),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              const HorizontalBarWidget(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 61.h,
                      ),
                      Row(
                        children: [
                          const CustomCheckBoxWidget(),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Agree with ideate's terms and conditions",
                            style: AppTextStyles.font10SemiBold.copyWith(
                              color: AppColors.blackText,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          5.sp,
                        ),
                        child: Container(
                          width: 364.w,
                          height: 65.h,
                          color: AppColors.blueDark,
                          child: Center(
                            child: Text(
                              "Send money",
                              style: AppTextStyles.font18SemiBold
                                  .copyWith(color: AppColors.whiteText),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
