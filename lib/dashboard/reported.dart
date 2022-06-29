import 'package:flutter/material.dart';

class Reported extends StatelessWidget {
  const Reported({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          Text("Reported"),
          Text("Some Hash"),
          Text("Valid"),
          Text("Some Shares"),
        ],
      ),
    );
  }
}
