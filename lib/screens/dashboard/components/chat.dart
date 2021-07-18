import 'package:admin/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartSectionDatas
            )
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: defaultPadding),
                Text(
                  "80.0",
                  style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      height: 0.5),
                ),
                Text("of 100GB")
              ],
            )
          ),
        ]
      ),
    );
  }
}

List<PieChartSectionData> pieChartSectionDatas = [
  PieChartSectionData(
    color: primaryColor,
    value: 35,
    showTitle: false,
    radius: 25
  ),
  PieChartSectionData(
    color: Colors.red,
    value: 20,
    showTitle: false,
    radius: 22
  ),
  PieChartSectionData(
    color: Colors.yellow,
    value: 15,
    showTitle: false,
    radius: 19
  ),
  PieChartSectionData(
    color: primaryColor.withOpacity(0.1),
    value: 10,
    showTitle: false,
    radius: 16
  ),
];