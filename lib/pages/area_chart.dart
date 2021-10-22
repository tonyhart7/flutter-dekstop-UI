part of 'pages.dart';

class AreaChartLite extends StatelessWidget {
  const AreaChartLite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      legend: Legend(
        isVisible: true,
        opacity: 0.7,
        position: LegendPosition.bottom,
      ),
      title: ChartTitle(text: 'Penjualan sabun sunsilk'),
      plotAreaBorderWidth: 0,
      primaryXAxis: DateTimeAxis(
          dateFormat: DateFormat.y(),
          interval: 1,
          intervalType: DateTimeIntervalType.years,
          majorGridLines: const MajorGridLines(width: 0),
          edgeLabelPlacement: EdgeLabelPlacement.shift),
      primaryYAxis: NumericAxis(
          labelFormat: '{value}M',
          title: AxisTitle(text: '5 YoY Revenue'),
          interval: 1,
          axisLine: const AxisLine(width: 0),
          majorTickLines: const MajorTickLines(size: 0)),
      series: _getDefaultAreaSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  List<AreaSeries<ChartSampleData, DateTime>> _getDefaultAreaSeries() {
    final List<ChartSampleData> chartData = <ChartSampleData>[
      ChartSampleData(x: DateTime(2000, 1, 1), y: 4, secondSeriesYValue: 2.6),
      ChartSampleData(x: DateTime(2001, 1, 1), y: 3.0, secondSeriesYValue: 2.8),
      ChartSampleData(x: DateTime(2002, 1, 1), y: 3.8, secondSeriesYValue: 2.6),
      ChartSampleData(x: DateTime(2003, 1, 1), y: 3.4, secondSeriesYValue: 3),
      ChartSampleData(x: DateTime(2004, 1, 1), y: 3.2, secondSeriesYValue: 3.6),
      ChartSampleData(x: DateTime(2005, 1, 1), y: 3.9, secondSeriesYValue: 3),
    ];
    return <AreaSeries<ChartSampleData, DateTime>>[
      AreaSeries<ChartSampleData, DateTime>(
        dataSource: chartData,
        opacity: 0.7,
        name: 'Zipper A',
        xValueMapper: (ChartSampleData sales, _) => sales.x as DateTime,
        yValueMapper: (ChartSampleData sales, _) => sales.y,
      ),
      AreaSeries<ChartSampleData, DateTime>(
        dataSource: chartData,
        opacity: 0.7,
        name: 'Ules eich bin',
        xValueMapper: (ChartSampleData sales, _) => sales.x as DateTime,
        yValueMapper: (ChartSampleData sales, _) => sales.secondSeriesYValue,
      )
    ];
  }
}
