import 'package:choiss/home_view.dart';
import 'package:choiss/model/result_chart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ViewChart extends ConsumerStatefulWidget {
  const ViewChart({Key? key}) : super(key: key);

  @override
  ViewChartState createState() => ViewChartState();
}

var ltaProvider = StateProvider((ref) => 0);
var ltcProvider = StateProvider((ref) => 0);
var ltsProvider = StateProvider((ref) => 0);

class ViewChartState extends ConsumerState<ViewChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Test Result'),
        backgroundColor: const Color(0XFF7B61FF),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 2,
              ),
              SizedBox(
                height: 220,
                child: Consumer(
                  builder:
                      (BuildContext context, WidgetRef ref, Widget? child) {
                    final List<ResultChart> chartData = [
                      ResultChart("Arts", ref.watch(ltaProvider)),
                      ResultChart("Commercial", ref.watch(ltcProvider)),
                      ResultChart("Science", ref.watch(ltsProvider)),
                    ];

                    return SfCartesianChart(
                      plotAreaBorderWidth: 0,
                      primaryXAxis: CategoryAxis(
                        majorTickLines: const MajorTickLines(size: 0),
                        majorGridLines: const MajorGridLines(width: 0),
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        axisLine: const AxisLine(width: 0),
                      ),
                      primaryYAxis: NumericAxis(
                          isVisible: false,
                          //numberFormat: NumberFormat.compact(),
                          majorGridLines: const MajorGridLines(width: 0),
                          majorTickLines: const MajorTickLines(size: 0),
                          rangePadding: ChartRangePadding.none,
                          //labelStyle: const TextStyle(color: kGrayDusty),
                          axisLine: const AxisLine(width: 0)),
                      backgroundColor: const Color(0XFFD9D9D9),
                      series: [
                        StackedColumnSeries(
                          dataSource: chartData,
                          isTrackVisible: false,
                          color: const Color(0XFF7B61FF).withOpacity(0.7),
                          spacing: 0.2,
                          xValueMapper: (ResultChart sc, _) => sc.department,
                          yValueMapper: (ResultChart sc, _) => sc.value,
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  highestNum(int a, int b, int c) {
                    if ((a >= b) & (a >= c)) {
                      return "Arts";
                    } else if ((b >= c) & (b >= a)) {
                      return "Commercial";
                    } else {
                      return "Science";
                    }
                  }

                  return Text(
                    'From the result, you have greater chances in the'
                    ' ${highestNum(
                      ref.watch(ltaProvider),
                      ref.watch(ltcProvider),
                      ref.watch(ltsProvider),
                    )} class',
                    textAlign: TextAlign.center,
                  );
                },
              ),
              const Spacer(
                flex: 1,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => const HomeView()),
                      (Route<dynamic> route) => false);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0XFF7B61FF),
                  ),
                ),
                child: const Text('Return to Home'),
              ),
              const Spacer(
                flex: 1,
              ),
              const Text(
                  "Would you like to know more? Get in touch with a career expert.",
                  textAlign: TextAlign.center),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
