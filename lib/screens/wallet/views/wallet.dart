import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../constants/assets.dart';
import '../../../constants/colors.dart';
import '../../../widgets/home_widgets/features_guide.dart';
import '../../../widgets/wallet_widgets/card_balance.dart';
import '../../../widgets/wallet_widgets/glance_with_button.dart';
import '../../../widgets/wallet_widgets/graph.dart';
import '../../../widgets/wallet_widgets/graph_range.dart';
import '../../../widgets/wallet_widgets/spend_glance.dart';
import '../../../widgets/wallet_widgets/top_bar.dart';
import '../../send_money/views/send_money.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 25.w, right: 25.w),
        child: Column(
          children: [
            WalletTopBarWidget(
              onTap: () {
                Get.to(
                  const SendMoneyScreen(),
                );
              },
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                CardBalanceWidget(
                  backgroundColor: AppColors.blueDark,
                  balance: '2,960.00',
                  cardName: "Physical ebl card",
                  cardNumber: "**** 2437 **** 2424",
                  channelIconUrl: Assets.mastercardSvg,
                  expiryDate: "12/29",
                  lineColor: AppColors.whiteText,
                  textColor: AppColors.whiteText,
                  balanceColor: AppColors.whiteLight,
                ),
                const Spacer(),
                CardBalanceWidget(
                  backgroundColor: AppColors.greyLight,
                  balance: '1,280.00',
                  cardName: "Virtual ebl card",
                  cardNumber: "****6543 ****6489",
                  channelIconUrl: Assets.visaSvg,
                  expiryDate: "1/27",
                  lineColor: AppColors.greyText,
                  textColor: AppColors.greyText,
                  balanceColor: AppColors.blackText,
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            const FeaturesGuideWidget(
              title: "Total spending",
              subtitle: "",
            ),
            SizedBox(
              height: 16.h,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(
                5.sp,
              ),
              child: Container(
                height: 48.h,
                width: 364.w,
                color: AppColors.greyLight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    GraphRangeWidget(
                      title: "Day",
                      active: false,
                    ),
                    GraphRangeWidget(
                      title: "Week",
                      active: true,
                    ),
                    GraphRangeWidget(
                      title: "Month",
                      active: false,
                    ),
                    GraphRangeWidget(
                      title: "Custom range",
                      active: false,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            const GraphWidget(),
            SizedBox(
              height: 8.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SpendGlanceWidget(
                  title: "Weekly spend",
                  amount: "1,454.00",
                ),
                SpendGlanceWidget(
                  title: "Shopping",
                  amount: "890.00",
                ),
                SpendGlanceWidget(
                  title: "Others",
                  amount: "564.00",
                ),
              ],
            ),
            SizedBox(
              height: 6.h,
            ),
            const GlanceButtonWidget(
              title: "Weekly income",
              amount: "2,960.00",
            ),
          ],
        ),
      ),
    );
  }
}
