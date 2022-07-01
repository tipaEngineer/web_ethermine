import 'package:flutter/material.dart';

class Workers extends StatelessWidget {
  final num activeWorkers;
  const Workers({Key? key, required this.activeWorkers}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          const Text("Workers"),
          Text(activeWorkers.toString()),
          const Text("Last Seen"),
          const Text("Some time"),
        ],
      ),
    );
  }
}
