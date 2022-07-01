import 'package:flutter/material.dart';
import 'package:web_ethermine/wallet_dashboard.dart';



class Average extends StatelessWidget {
  final List<WorkerData> workersData;
  const Average({Key? key, required this.workersData }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    num percentInvalidShares = 0;
    num invalidShares = 0;
    for (var element in workersData) {
      invalidShares = invalidShares + element.invalidShares;
      percentInvalidShares = percentInvalidShares + (element.invalidShares*100/(element.validShares+element.staleShares+element.invalidShares));
    }

    return Column(
      children:  [
        const Text("Average"),
        const Text('470.00'),
        const Text("Invalid"),
        Text('${invalidShares.toString()}(${percentInvalidShares.toStringAsFixed(2)}%)'),
      ],
    );
  }
}
