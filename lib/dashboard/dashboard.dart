import 'package:flutter/material.dart';
import 'package:web_ethermine/dashboard/average.dart';
import 'package:web_ethermine/dashboard/current.dart';
import 'package:web_ethermine/dashboard/reported.dart';
import 'package:web_ethermine/dashboard/workers.dart';
import 'package:web_ethermine/wallet_dashboard.dart';

class DashBoard extends StatelessWidget {
  final WorkersData worker;

  const DashBoard({Key? key, required this.worker}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 15, 5, 15),
      color: Colors.cyan,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(worker.reportedHashrate.toString()),
          const Reported(),
          const Current(),
          const Average(),
          const Workers(),
        ],
      ),
    );
  }
}
