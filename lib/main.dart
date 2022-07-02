import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:web_ethermine/dashboard/dashboard.dart';
import 'package:web_ethermine/wallet_dashboard.dart';
import 'dart:async';

Future<WalletDashboard> fetchEthermineData() async {
  final response = await http.get(Uri.parse(
      'https://api.ethermine.org/miner/0x57cCf2aA47fccDE16fC4F11075Dc6a86E9e4217A/currentStats'));
  if (response.statusCode == 200) {
    return WalletDashboard.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load data');
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ethermine',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Ethermine'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<WalletDashboard> futureWalletDashboard;
  @override
  void initState() {
    super.initState();
    futureWalletDashboard = fetchEthermineData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: FutureBuilder<WalletDashboard>(
          future: futureWalletDashboard,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  color: Colors.amber,
                  child: Column(
                    children: [DashBoard(data: snapshot.data!.data,)],
                  ));
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        )));
  }
}
