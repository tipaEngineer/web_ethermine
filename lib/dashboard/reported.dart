import 'package:flutter/material.dart';
import 'package:web_ethermine/current_stats.dart';

class Reported extends StatelessWidget {
  final CurrentStatsData dataReported;
  const Reported({Key? key, required this.dataReported}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var reportedHash = dataReported.reportedHashrate/1000000;
    var percentValid = (dataReported.validShares*100/(dataReported.validShares + dataReported.staleShares + dataReported.invalidShares)).toStringAsFixed(2);
    return Column(
      children: [
        const Text("Reported"),
        Text("${reportedHash.toStringAsFixed(2)} MH/s"),
        const Text("Valid"),
        Text('${dataReported.validShares.toString()}($percentValid)%'   ),
      ],
    );
  }
}
