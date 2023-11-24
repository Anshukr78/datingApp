import 'package:datingapp/helper/color.dart';
import 'package:datingapp/helper/size.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarChartWidget extends StatefulWidget {
  const BarChartWidget({super.key});

  @override
  State<BarChartWidget> createState() => _BarChartWidgetState();
}

class _BarChartWidgetState extends State<BarChartWidget> {
  List<MonthlyData> monthlyMap = [
    MonthlyData(data: 4, month: 'Jan'),
    MonthlyData(data: 5, month: 'Feb'),
    MonthlyData(data: 7, month: 'Mar'),
    MonthlyData(data: 3, month: 'Apr'),
    MonthlyData(data: 5, month: 'May'),
    MonthlyData(data: 4, month: 'Jun'),
    MonthlyData(data: 7, month: 'Jul'),
    MonthlyData(data: 4, month: 'Aug'),
    MonthlyData(data: 2, month: 'Sep'),
    MonthlyData(data: 5, month: 'Oct'),
    MonthlyData(data: 7, month: 'Nov'),
    MonthlyData(data: 6, month: 'Dec'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: AppSize.heightDivide(context, 80),
        // bottom: AppSize.heightDivide(context, 40),
      ),
      height: AppSize.heightDivide(context, 4),
      width: AppSize.widthMultiply(context, 1),
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(
          majorGridLines: const MajorGridLines(width: 0),
        ),
        series: <ColumnSeries<MonthlyData, String>>[
          ColumnSeries<MonthlyData, String>(
            width: 0.4,
            color: AppColor.b5363DD,
            dataSource: monthlyMap,
            xValueMapper: (MonthlyData monthlyData, index) => monthlyData.month,
            yValueMapper: (MonthlyData monthlyData, index) => monthlyData.data,
          )
        ],
      ),
    );
  }
}

class MonthlyData {
  final String month;
  final double data;

  MonthlyData({required this.month, required this.data});
}
