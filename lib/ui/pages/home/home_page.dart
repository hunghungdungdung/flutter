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
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://img.freepik.com/free-photo/design-space-paper-textured-background_53876-42312.jpg?w=2000'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: AppBar(
        //   title: const Text("To-do List"),
        // ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 75,
                width: 175,
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.pushNamed(context, TodoListPage.path);
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: Text(
                    "Todo List",
                    style: GoogleFonts.courgette(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 75,
                width: 175,
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.pushNamed(context, TimerPage.path);
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: Text(
                    "Timer", style: GoogleFonts.courgette(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 75,
                width: 175,
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.pushNamed(context, MusicPage.path);
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child:  Text(
                    "Music",
                    style: GoogleFonts.courgette(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 75,
                width: 175,
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.pushNamed(context, StopWatchPage.path);
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child:  Text(
                    "Stopwatch",
                    style: GoogleFonts.courgette(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
