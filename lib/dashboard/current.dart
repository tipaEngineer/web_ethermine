import 'package:flutter/material.dart';
import 'package:web_ethermine/wallet_dashboard.dart';

class Current extends StatelessWidget {
  final CurrentStatistics currentHashStale;
  const Current({Key? key, required this.currentHashStale}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var current = currentHashStale.currentHashrate/1000000;
    var percentStale = (currentHashStale.staleShares*100/(currentHashStale.validShares + currentHashStale.staleShares)).toStringAsFixed(2);

    return Column(
      children:  [
        const Text("Current"),
        Text('${current.toStringAsFixed(2)}MH/s'),
        const Text("Stale"),
        Text('${currentHashStale.staleShares.toString()}($percentStale)%'),
      ],
    );
  }
}
