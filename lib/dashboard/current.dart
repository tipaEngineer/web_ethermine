import 'package:flutter/material.dart';

class Current extends StatelessWidget {
  const Current({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          Text("Current"),
          Text("Some Hash"),
          Text("Stale"),
          Text("Some Stale"),
        ],
      ),
    );
  }
}
