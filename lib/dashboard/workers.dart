import 'package:flutter/material.dart';
import 'package:web_ethermine/current_stats.dart';

class Workers extends StatelessWidget {
  final CurrentStatsData dataWorkers;
  const Workers({Key? key, required this.dataWorkers}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final time = DateTime.now();
    final lastSeen = DateTime.fromMillisecondsSinceEpoch(dataWorkers.lastSeen.toInt()*1000);
    final difference = time.difference(lastSeen).inMinutes;

    return Column(
      children: [
        const Text("Workers"),
        Text(dataWorkers.activeWorkers.toString()),
        const Text("Last Seen"),
        Text('$difference m'),
      ],
    );
  }
}
