part of 'pages.dart';

class PieChartLite extends StatelessWidget {
  const PieChartLite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      legend: Legend(isVisible: true),
      series: _getDefaultPieSeries(),
    );
  }

  List<PieSeries<ChartSampleData, String>> _getDefaultPieSeries() {
    final List<ChartSampleData> pieData = <ChartSampleData>[
      ChartSampleData(x: 'Tony', y: 13, text: 'Tony \n 13%'),
      ChartSampleData(x: 'Hart', y: 24, text: 'Hart \n 24%'),
      ChartSampleData(x: 'Inot', y: 25, text: 'Inot \n 25%'),
      ChartSampleData(x: 'Martin', y: 38, text: 'Martin \n 38%'),
    ];
    return <PieSeries<ChartSampleData, String>>[
      PieSeries<ChartSampleData, String>(
        explode: true,
        explodeIndex: 0,
        explodeOffset: '10%',
        dataSource: pieData,
        xValueMapper: (ChartSampleData data, _) => data.x as String,
        yValueMapper: (ChartSampleData data, _) => data.y,
        dataLabelMapper: (ChartSampleData data, _) => data.text,
        startAngle: 90,
        endAngle: 90,
        dataLabelSettings: const DataLabelSettings(isVisible: true),
      ),
    ];
  }
}
