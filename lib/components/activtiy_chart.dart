import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../utils/utils.dart';

class CustomBarChart extends StatefulWidget {
  CustomBarChart({super.key});

  @override
  State<CustomBarChart> createState() => _CustomBarChartState();
}

class _CustomBarChartState extends State<CustomBarChart> {
  String selectValue = "Monthly";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: gradient,
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Transaction",
              style: GoogleFonts.openSans(
                color: Colors.white38,
                fontSize: 12,
              ),
            ),
            subtitle: Text(
              "\$16,234.00",
              style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w800),
            ),
            trailing: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 3),
                height: 30,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white),
                ),
                child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        menuMaxHeight: 100,
                        value: selectValue,
                        dropdownColor: Colors.brown.shade900,
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,
                        ),
                        items: ["Monthly", "Yearly"].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: GoogleFonts.openSans(
                                  fontSize: 10, color: Colors.white),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newVal) {
                          if (newVal != null) {
                            setState(() {
                              selectValue = newVal;
                            });
                          }
                        }))),
          ),
          Expanded(
            child: SfCartesianChart(
              plotAreaBorderWidth: 0,

              margin: EdgeInsets.zero, // ✅ Ensures full width
              primaryXAxis: CategoryAxis(
                edgeLabelPlacement: EdgeLabelPlacement.shift,

                labelAlignment:
                    LabelAlignment.center, // ✅ Centers labels under bars
                majorGridLines: MajorGridLines(width: 0),
                axisLine: AxisLine(width: 0),
                labelPlacement:
                    LabelPlacement.betweenTicks, // ✅ Aligns labels with bars
                tickPosition: TickPosition.inside,

                // ✅ Custom formatter to highlight "Mar" text
                labelStyle: TextStyle(color: Colors.white),
                axisLabelFormatter: (AxisLabelRenderDetails args) {
                  return ChartAxisLabel(
                    args.text,
                    TextStyle(
                      color: args.text == "Mar" ? Colors.yellow : Colors.white,
                      fontWeight: args.text == "Mar"
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  );
                },
              ),
              primaryYAxis: NumericAxis(isVisible: false),

              series: <CartesianSeries<dynamic, dynamic>>[
                ColumnSeries<_ChartData, String>(
                  dataSource: _getChartData(),
                  xValueMapper: (data, _) => data.month,
                  yValueMapper: (data, _) => data.value,
                  width: 0.9, // ✅ Keeps bars proportional
                  spacing: 0.2, // ✅ Balanced spacing between bars
                  borderRadius: BorderRadius.circular(6),

                  // ✅ Highlight March bar in yellow
                  pointColorMapper: (data, _) =>
                      data.month == "Mar" ? Colors.yellow : Colors.white,

                  // ✅ Show percentage label inside March bar
                  dataLabelSettings: DataLabelSettings(
                    isVisible: true,
                    labelAlignment: ChartDataLabelAlignment.top,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  dataLabelMapper: (data, _) =>
                      data.month == "Mar" ? "${data.percentage}%" : "",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Chart data
  List<_ChartData> _getChartData() {
    return [
      _ChartData("Jan", 5, 1.2),
      _ChartData("Feb", 6, 2.1),
      _ChartData("Mar", 9, 3.2), // Highlighted month with percentage
      _ChartData("Apr", 7, 2.5),
      _ChartData("May", 9, 4.1),
      _ChartData("Jun", 5, 1.8),
    ];
  }
}

// Data model
class _ChartData {
  final String month;
  final double value;
  final double percentage;
  _ChartData(this.month, this.value, this.percentage);
}
