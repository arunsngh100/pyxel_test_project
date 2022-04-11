import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../constants/colors.dart';

class GraphWidget extends StatelessWidget {
  const GraphWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5.sp,
        ),
        border: Border.all(
          color: AppColors.greyText.withOpacity(0.3),
          width: 1.w,
        ),
      ),
      child: SfCartesianChart(
        // Initialize category axis
        primaryXAxis: CategoryAxis(),
        series: <LineSeries<AmountData, String>>[
          LineSeries<AmountData, String>(
            // Bind data source
            dataSource: <AmountData>[
              AmountData('Mon', 110),
              AmountData('Tue', 180),
              AmountData('Wed', 210),
              AmountData('Thu', 220),
              AmountData('Fri', 350),
              AmountData('Sat', 180),
              AmountData('Sun', 200),
            ],
            xValueMapper: (AmountData sales, _) => sales.year,
            yValueMapper: (AmountData sales, _) => sales.sales,
          )
        ],
      ),
    );
  }
}

class AmountData {
  AmountData(this.year, this.sales);
  final String year;
  final double sales;
}
