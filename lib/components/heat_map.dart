import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class MyHeatMap extends StatelessWidget {
  final DateTime startDate;
  final Map<DateTime, int> datasets;

  const MyHeatMap({
    super.key,
    required this.startDate,
    required this.datasets,
  });

  @override
  Widget build(BuildContext context) {
    DateTime endDate = DateTime(startDate.year, startDate.month + 1, 0);
    return HeatMap(
      startDate: startDate,
      endDate: endDate,
      datasets: datasets,
      colorMode: ColorMode.color,
      defaultColor: Theme.of(context).colorScheme.secondary,
      textColor: Colors.white,
      showColorTip: false,
      showText: true,
      scrollable: true,
      size: 30,
      colorsets: {
        1: Colors.green.shade400,
        2: Colors.green.shade500,
        3: Colors.green.shade600,
        4: Colors.green.shade700,
        5: Colors.green.shade800,
      },
    );
  }
}
