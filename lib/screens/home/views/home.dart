import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyxl_test_project/constants/assets.dart';
import 'package:pyxl_test_project/constants/colors.dart';
import '../../../widgets/home_widgets/action_button.dart';
import '../../../widgets/home_widgets/activity_tile.dart';
import '../../../widgets/home_widgets/balance_widget.dart';
import '../../../widgets/home_widgets/expanded_guide.dart';
import '../../../widgets/home_widgets/features_guide.dart';
import '../../../widgets/home_widgets/topbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 23.5.w,
          right: 23.5.w,
        ),
        child: Column(
          children: [
            const TopBarWidget(
              title: "Good day, Zesan",
            ),
            SizedBox(
              height: 21.h,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(
                5.sp,
              ),
              child: Container(
                height: 167.h,
                width: 364.w,
                color: AppColors.blueDark,
                child: const BalanceWidget(
                  name: "Arian zesan",
                  balance: "6,190",
                  addedCards: "05",
                  accountNumber: "2234521",
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            const FeaturesGuideWidget(
              title: "Features",
              subtitle: "See more",
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActionButtonWidget(
                  assetUrl: Assets.sendSvg,
                  width: 98.w,
                ),
                ActionButtonWidget(
                  assetUrl: Assets.receiveSvg,
                  width: 119.w,
                ),
                ActionButtonWidget(
                  assetUrl: Assets.rewardsSvg,
                  width: 122.w,
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            const ExpandGuideWidget(),
            SizedBox(
              height: 10.65.h,
            ),
            RecentActivityTileWidget(
              name: "Rebeka ratry",
              amount: "1,190.00",
              date: "22 jan 2022",
              time: "03:23AM",
              amountLeading: "+",
              color: AppColors.blueDarkText,
            ),
            SizedBox(
              height: 21.h,
            ),
            RecentActivityTileWidget(
              name: "Sazzin molla",
              amount: "75.00",
              date: "2 jan 2022",
              time: "03:23AM",
              amountLeading: "+",
              color: AppColors.redText,
            ),
            SizedBox(
              height: 21.h,
            ),
            RecentActivityTileWidget(
              name: "Tonim khan",
              amount: "220.00",
              date: "20 jan 2022",
              time: "03:23AM",
              amountLeading: "-",
              color: AppColors.redText,
            ),
            SizedBox(
              height: 21.h,
            ),
            RecentActivityTileWidget(
              name: "Adrito Rafsan",
              amount: "2000.00",
              date: "19 jan 2022",
              time: "03:23AM",
              amountLeading: "+",
              color: AppColors.blueDarkText,
            ),
            SizedBox(
              height: 21.h,
            ),

          ],
        ),
      ),
    );
  }
}
