import 'package:flutter/material.dart';
import 'package:web_ethermine/current_stats.dart';



class Average extends StatelessWidget {
  final CurrentStatsData dataAverage;
  const Average({Key? key, required this.dataAverage }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    num percentInvalidShares = dataAverage.invalidShares*100/(dataAverage.invalidShares + dataAverage.validShares + dataAverage.staleShares);
    return Column(
      children:  [
        const Text("Average"),
        Text('${(dataAverage.averageHashrate/1000000).toStringAsFixed(2)}Mh/s'),
        const Text("Invalid"),
        Text('${dataAverage.invalidShares.toString()}(${percentInvalidShares.toStringAsFixed(2)}%)'),
      ],
    );
  }
}
