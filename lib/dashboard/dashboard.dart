import 'package:flutter/material.dart';
import 'package:web_ethermine/dashboard/average.dart';
import 'package:web_ethermine/dashboard/current.dart';
import 'package:web_ethermine/dashboard/reported.dart';
import 'package:web_ethermine/dashboard/workers.dart';
import 'package:web_ethermine/wallet_dashboard.dart';

class DashBoard extends StatelessWidget {
  final Data data;

  const DashBoard({Key? key, required this.data}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return Container(
      margin: const EdgeInsets.fromLTRB(5, 15, 5, 15),
      color: Colors.cyan,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Reported(reportedHashShares: data.currentStatistics),
          Current(currentHashStale: data.currentStatistics),
          Average(workersData: data.workers),
          Workers(activeWorkers: data.currentStatistics.activeWorkers),
        ],
      ),
    );
  }
}
