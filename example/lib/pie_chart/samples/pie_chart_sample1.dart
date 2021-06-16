import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'indicator.dart';

class PieChartSample1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChartSample1State();
}

class PieChartSample1State extends State {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        color: Colors.white,
        child: AspectRatio(
          aspectRatio: 1,
          child: PieChart(
            PieChartData(
                pieTouchData: null,
                borderData: FlBorderData(
                  show: false,
                ),
                startDegreeOffset: 180,
                sectionsSpace: 0,
                centerSpaceRadius: 130,
                sections: showingSections()),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xFF269F30),
            showTitle: false,
            value: 40,
            radius: 30,
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0x58000000),
            showTitle: false,
            value: 10,
            radius: 30,
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0x00FFFFFF),
            showTitle: false,
            value: 50,
            radius: 30,
          );
        default:
          throw Error();
      }
    });
  }
}
