import 'dart:collection';
import 'package:beyond_static_app/screens/allTheBrains/getChartData.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PinkCard extends StatefulWidget {
  @override
  _PinkCardState createState() => _PinkCardState();
}

class _PinkCardState extends State<PinkCard> {
  List<_SalesData> data = [];

  Future<List> generateGraph() async {
    LinkedHashMap temp = await GetChart().getChxyData();
    List lalla = temp["yAxis"];
    for (int i = 0; i < 6; i++) {
      data.add(_SalesData(i + 1, lalla[i]));
    }
    return data;
  }

  @override
  void initState() {
    // TODO: implement initState
    generateGraph();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset.zero,
            spreadRadius: 3.0,
            blurRadius: 6.0,
            color: Color(0x272D3B33)),
      ], color: Color(0xFFFF007C), borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          FutureBuilder(
            future: generateGraph(),
            builder: (context, snapshot) {
              return SfCartesianChart(
                
                  margin: EdgeInsets.all(15),

                primaryXAxis: NumericAxis(
                  //Hide the gridlines of x-axis
                  majorGridLines: MajorGridLines(width: 0),
                  //Hide the axis line of x-axis
                  axisLine: AxisLine(width: 0),
                ),

                primaryYAxis: NumericAxis(
                  //Hide the gridlines of y-axis
                    majorGridLines: MajorGridLines(width: 0),
                    //Hide the axis line of y-axis
                    axisLine: AxisLine(width: 0)
                ),

                series: <ChartSeries<_SalesData, int>>[
                  LineSeries<_SalesData, int>(
                      dataSource: data,
                      xValueMapper: (_SalesData sales, _) => sales.months,
                      yValueMapper: (_SalesData sales, _) => sales.messages,

                      markerSettings: MarkerSettings(
                          isVisible: true,
                          // Marker shape is set to diamond
                          color: Colors.white,
                      ),

                      name: 'Sales',
                      // Enable data label
                      dataLabelSettings: DataLabelSettings(isVisible: true))
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.months, this.messages);

  final int months;
  final int messages;
}
