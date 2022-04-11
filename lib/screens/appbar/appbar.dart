import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pyxl_test_project/constants/assets.dart';
import 'package:pyxl_test_project/screens/home/views/home.dart';
import 'package:pyxl_test_project/screens/send_money/views/send_money.dart';
import '../wallet/views/wallet.dart';
import 'bloc/bottombar_bloc.dart';

class AppBarScreen extends StatelessWidget {
  AppBarScreen({Key? key}) : super(key: key);

  final List<Widget> _pages = [
    const HomeScreen(),
    const WalletScreen(),
    const SendMoneyScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => BottombarBloc(),
        child: BlocBuilder<BottombarBloc, BottombarState>(
          builder: (context, state) {
            return Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  bottom: 90.h,
                  left: 0.w,
                  right: 0.w,
                  top: 53.h,
                  child: SizedBox(
                    height: 806.h,
                    width: 414.w,
                    child: _pages[state is PageChangeState ? state.index : 0],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    height: 90.h,
                    width: 414.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<BottombarBloc>(context).add(
                              const IndexChangedEvent(index: 0),
                            );
                          },
                          child: SvgPicture.asset(
                            state is PageChangeState
                                ? state.index == 0
                                    ? Assets.homeSvg
                                    : Assets.homeInactiveSvg
                                : Assets.homeSvg,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<BottombarBloc>(context).add(
                              const IndexChangedEvent(index: 1),
                            );
                          },
                          child: SvgPicture.asset(
                            state is PageChangeState
                                ? state.index == 1
                                    ? Assets.walletActiveSvg
                                    : Assets.walletSvg
                                : Assets.walletSvg,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<BottombarBloc>(context).add(
                              const IndexChangedEvent(index: 2),
                            );
                          },
                          child: SvgPicture.asset(
                            Assets.giftSvg,
                          ),
                        ),
                        SvgPicture.asset(
                          Assets.profileSvg,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
