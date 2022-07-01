import 'package:flutter/material.dart';

class Reported extends StatelessWidget {
  final String hash;
  const Reported({Key? key, required this.hash}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Reported"),
        Text(hash),
        const Text("Valid"),
        const Text("Some Shares"),
      ],
    );
  }
}
