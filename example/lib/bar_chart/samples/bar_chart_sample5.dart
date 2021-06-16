import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BarChartSample5State();
}

class BarChartSample5State extends State<BarChartSample5> {
  static const double barWidth = 30;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        children: [
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            color: const Color(0xff020227),
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 100,
                  minY: 0,
                  groupsSpace: 0,
                  barTouchData: BarTouchData(
                    enabled: false,
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    topTitles: null,
                    bottomTitles: SideTitles(
                      showTitles: true,
                      getTextStyles: (value) => const TextStyle(color: Colors.white, fontSize: 9),
                      margin: 20,
                      rotateAngle: -10,
                      getTitles: (double value) {
                        switch (value.toInt()) {
                          case 0:
                            return 'Interview(100)';
                          case 1:
                            return 'Board Room(100)';
                          case 2:
                            return 'Public Speech(100)';
                          case 3:
                            return 'Media(100)';
                          default:
                            return '';
                        }
                      },
                    ),
                    leftTitles: SideTitles(
                      showTitles: true,
                      getTextStyles: (value) => const TextStyle(color: Colors.white, fontSize: 10),
                      rotateAngle: 0,
                      getTitles: (double value) {
                        if (value == 0) {
                          return '0';
                        }
                        return '${value.toInt()}';
                      },
                      interval: 20,
                      margin: 8,
                      reservedSize: 20,
                    ),
                    rightTitles: null,
                  ),
                  gridData: FlGridData(
                    show: true,
                    checkToShowHorizontalLine: (value) => value % 20 == 0,
                    getDrawingHorizontalLine: (value) {
                      if (value == 0) {
                        return FlLine(color: const Color(0xff363753), strokeWidth: 3);
                      }
                      return FlLine(
                        color: const Color(0xff2a2747),
                        strokeWidth: 0.8,
                      );
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  barGroups: [
                    BarChartGroupData(
                      x: 0,
                      barRods: [
                        BarChartRodData(
                          y: 80,
                          width: barWidth,
                          borderRadius: const BorderRadius.only(),
                          rodStackItems: [
                            BarChartRodStackItem(0, 50, const Color(0xffff4d94)),
                            BarChartRodStackItem(50, 80, const Color(0xff19bfff)),
                          ],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 1,
                      barRods: [
                        BarChartRodData(
                          y: 50,
                          width: barWidth,
                          borderRadius: const BorderRadius.only(),
                          rodStackItems: [
                            BarChartRodStackItem(0, 20, const Color(0xffff4d94)),
                            BarChartRodStackItem(20, 50, const Color(0xff19bfff)),
                          ],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 2,
                      barRods: [
                        BarChartRodData(
                          y: 30,
                          width: barWidth,
                          borderRadius: const BorderRadius.only(),
                          rodStackItems: [
                            BarChartRodStackItem(0, 10, const Color(0xffff4d94)),
                            BarChartRodStackItem(10, 30, const Color(0xff19bfff)),
                          ],
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 3,
                      barRods: [
                        BarChartRodData(
                          y: 90,
                          width: barWidth,
                          borderRadius: const BorderRadius.only(),
                          rodStackItems: [
                            BarChartRodStackItem(0, 30, const Color(0xffff4d94)),
                            BarChartRodStackItem(30, 90, const Color(0xff19bfff)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 30, height: 10, color: Color(0xffff4d94)),
                SizedBox(width: 10),
                Text.rich(TextSpan(text: 'Average Score')),
                SizedBox(width: 10),
                Container(width: 30, height: 10, color: Color(0xff19bfff)),
                SizedBox(width: 10),
                Text.rich(TextSpan(text: 'Best Score')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
