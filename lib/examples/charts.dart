import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ChartsExample extends StatelessWidget {
  const ChartsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Charts Example'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                '📈 Line Chart Example',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: true),
                    titlesData: FlTitlesData(show: true),
                    borderData: FlBorderData(show: true),
                    lineBarsData: [
                      LineChartBarData(
                        isCurved: true,
                        color: Colors.teal,
                        barWidth: 3,
                        spots: const [
                          FlSpot(0, 1),
                          FlSpot(1, 3),
                          FlSpot(2, 2.5),
                          FlSpot(3, 4),
                          FlSpot(4, 3.5),
                          FlSpot(5, 5),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 40),
              const Text(
                '📊 Bar Chart Example',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              SizedBox(
                height: 200,
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.spaceAround,
                    barGroups: [
                      _makeGroupData(0, 3),
                      _makeGroupData(1, 4),
                      _makeGroupData(2, 2),
                      _makeGroupData(3, 5),
                      _makeGroupData(4, 3.5),
                    ],
                    borderData: FlBorderData(show: false),
                    titlesData: FlTitlesData(show: true),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function for bar chart
  BarChartGroupData _makeGroupData(int x, double y) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          color: Colors.teal,
          width: 18,
          borderRadius: BorderRadius.circular(6),
        ),
      ],
    );
  }
}
