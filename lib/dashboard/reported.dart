import 'package:flutter/material.dart';
import 'package:web_ethermine/wallet_dashboard.dart';

class Reported extends StatelessWidget {
  final CurrentStatistics reportedHashShares;
  const Reported({Key? key, required this.reportedHashShares}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var reportedHash = reportedHashShares.reportedHashrate/1000000;
    var percentValid = (reportedHashShares.validShares*100/(reportedHashShares.validShares + reportedHashShares.staleShares)).toStringAsFixed(2);
    return Column(
      children: [
        const Text("Reported"),
        Text("${reportedHash.toStringAsFixed(2)} MH/s"),
        const Text("Valid"),
        Text('${reportedHashShares.validShares.toString()}($percentValid)%'   ),
      ],
    );
  }
}
