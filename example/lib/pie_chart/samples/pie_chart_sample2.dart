import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'indicator.dart';

class PieChartSample2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        color: Colors.white,
        child: AspectRatio(
          aspectRatio: 1,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Score\n60',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 60),
                ),
              ),
              PieChart(
                PieChartData(
                    pieTouchData: null,
                    borderData: FlBorderData(
                      show: false,
                    ),
                    startDegreeOffset: -90,
                    sectionsSpace: 0,
                    centerSpaceRadius: 130,
                    sections: showingSections()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xFF7EF88D),
            showTitle: false,
            value: 50,
            radius: 40,
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xFFACA8A1),
            showTitle: false,
            value: 50,
            radius: 40,
          );
        default:
          throw Error();
      }
    });
  }
}
