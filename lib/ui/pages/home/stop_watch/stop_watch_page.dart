import 'package:flutter/material.dart';

class StopWatchPage extends StatefulWidget {
  static const path = "/stop-watch";
  const StopWatchPage({Key? key}) : super(key: key);

  @override
  State<StopWatchPage> createState() => _StopWatchPageState();
}

class _StopWatchPageState extends State<StopWatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stop Watch"),
      ),
    );
  }
}
