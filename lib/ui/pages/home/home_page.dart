import 'package:flutter/material.dart';
import 'package:flutter_application/ui/pages/home/stop_watch/stop_watch_page.dart';
import 'package:flutter_application/ui/pages/home/timer/timer_page.dart';
import 'package:flutter_application/ui/pages/home/todo/todo_list_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../generated/l10n.dart';
import 'music/music_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                Navigator.pushNamed(context, TodoListPage.path);
              },
              child: Text(
                "Todo List",
                style: GoogleFonts.nanumPenScript(
                  fontSize: 24,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.pushNamed(context, TimerPage.path);
              },
              child: Text(
                "Timer",
                style: GoogleFonts.nanumPenScript(
                  fontSize: 24,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.pushNamed(context, MusicPage.path);
              },
              child: Text(
                "Music",
                style: GoogleFonts.nanumPenScript(
                  fontSize: 24,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.pushNamed(context, StopWatchPage.path);
              },
              child: Text(
                "Stop Watch",
                style: GoogleFonts.nanumPenScript(
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
