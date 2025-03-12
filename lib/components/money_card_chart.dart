import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../utils/utils.dart';

class MoneyCard extends StatelessWidget {
  final String title;
  final String amount;
  final Color graphColor;
  final List<double> data;

  MoneyCard(
      {required this.title,
      required this.amount,
      required this.graphColor,
      required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(15), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 4),
          Text(
            "\$$amount",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 6),
          Expanded(
            child: SfSparkLineChart(
              data: data,
              color: graphColor,
              axisLineColor: Colors.transparent,
              trackball: SparkChartTrackball(
                activationMode: SparkChartActivationMode.tap,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
