import 'package:flutter/material.dart';

class Workers extends StatelessWidget {
  const Workers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          Text("Workers"),
          Text("Count workers"),
          Text("Last Seen"),
          Text("Some time"),
        ],
      ),
    );
  }
}
