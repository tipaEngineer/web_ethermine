import 'package:flutter/material.dart';
import 'package:web_ethermine/dashboard/average.dart';
import 'package:web_ethermine/dashboard/current.dart';
import 'package:web_ethermine/dashboard/reported.dart';
import 'package:web_ethermine/dashboard/workers.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 15, 5, 15),
      color: Colors.cyan,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Reported(),
          Current(),
          Average(),
          Workers(),
        ],
      ),
    );
  }
}
