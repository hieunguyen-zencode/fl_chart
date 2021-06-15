import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class RadarChartSample1 extends StatefulWidget {
  @override
  _RadarChartSample1State createState() => _RadarChartSample1State();
}

class _RadarChartSample1State extends State<RadarChartSample1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: 1.3,
            child: RadarChart(
              RadarChartData(
                radarTouchData: RadarTouchData(touchCallback: (response) {}),
                dataSets: showingDataSets(),
                radarBackgroundColor: Colors.transparent,
                borderData: FlBorderData(show: false),
                radarBorderData: const BorderSide(color: Colors.transparent),
                titlePositionPercentageOffset: 0.2,
                titleTextStyle: const TextStyle(color: Colors.white, fontSize: 14),
                getTitle: (index) {
                  switch (index) {
                    case 0:
                      return 'Emotion';
                    case 1:
                      return 'Body';
                    case 2:
                      return 'Sentiment';
                    case 3:
                      return 'Voice';
                    default:
                      return '';
                  }
                },
                tickCount: 1,
                ticksTextStyle: const TextStyle(color: Colors.transparent, fontSize: 10),
                tickBorderData: const BorderSide(color: Colors.transparent),
                gridBorderData: const BorderSide(color: Colors.white, width: 2),
              ),
              swapAnimationDuration: const Duration(milliseconds: 400),
            ),
          ),
        ],
      ),
    );
  }

  List<RadarDataSet> showingDataSets() {
    return rawDataSets().asMap().entries.map((entry) {
      var index = entry.key;
      var rawDataSet = entry.value;

      final isSelected = (index == 0 ? true : false);
      return RadarDataSet(
        fillColor:
            isSelected ? rawDataSet.color.withOpacity(0.8) : rawDataSet.color.withOpacity(0.2),
        borderColor: isSelected ? rawDataSet.color : rawDataSet.color.withOpacity(0.25),
        entryRadius: 0,
        dataEntries: rawDataSet.values.map((e) => RadarEntry(value: e)).toList(),
        borderWidth: isSelected ? 4 : 2,
      );
    }).toList();
  }

  List<RawDataSet> rawDataSets() {
    return [
      RawDataSet(
        title: '',
        color: Color(0xff0CF0FF),
        values: [
          89,
          62,
          34,
          56,
        ],
      ),
      RawDataSet(
        title: '',
        color: Colors.white,
        values: [
          100,
          100,
          100,
          100,
        ],
      ),
      RawDataSet(
        title: '',
        color: Colors.white,
        values: [
          67,
          67,
          67,
          67,
        ],
      ),
      RawDataSet(
        title: '',
        color: Colors.white,
        values: [
          33,
          33,
          33,
          33,
        ],
      ),
    ];
  }
}

class RawDataSet {
  final String title;
  final Color color;
  final List<double> values;

  RawDataSet({
    required this.title,
    required this.color,
    required this.values,
  });
}
