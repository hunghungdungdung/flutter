import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  static const path = "/music";
  const MusicPage({Key? key}) : super(key: key);

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Music"),
      ),
    );
  }
}
