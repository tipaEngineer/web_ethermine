import 'package:flutter/material.dart';
import 'package:web_ethermine/current_stats.dart';

class Current extends StatelessWidget {
  final CurrentStatsData dataCurrent;
  const Current({Key? key, required this.dataCurrent}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var current = dataCurrent.currentHashrate/1000000;
    var percentStale = (dataCurrent.staleShares*100/(dataCurrent.validShares + dataCurrent.staleShares + dataCurrent.invalidShares)).toStringAsFixed(2);

    return Column(
      children:  [
        const Text("Current"),
        Text('${current.toStringAsFixed(2)}MH/s'),
        const Text("Stale"),
        Text('${dataCurrent.staleShares.toString()}($percentStale)%'),
      ],
    );
  }
}
