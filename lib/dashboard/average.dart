import 'package:flutter/material.dart';

class Average extends StatelessWidget {
  const Average({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          Text("Average"),
          Text("Some Hash"),
          Text("Invalid"),
          Text("Some Invalid"),
        ],
      ),
    );
  }
}
