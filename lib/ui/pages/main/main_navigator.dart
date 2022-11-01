import 'package:flutter/material.dart';
import 'package:flutter_application/ui/pages/home/music/music_page.dart';
import 'package:flutter_application/ui/pages/home/stop_watch/stop_watch_page.dart';
import 'package:flutter_application/ui/pages/home/timer/timer_page.dart';
import 'package:flutter_application/ui/pages/home/todo/todo_list_page.dart';
import 'package:flutter_application/utils/navigator_support.dart';

import '../pages.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({Key? key}) : super(key: key);

  @override
  _MainNavigatorState createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  @override
  Widget build(BuildContext context) {
    return NavigatorSupport(
      initialRoute: 'home',
      onGenerateRoute: (setting) {
        switch (setting.name) {
          case 'home':
            return MaterialPageRoute(builder: (context) => const HomePage());
          case TodoListPage.path:
            return MaterialPageRoute(
                builder: (context) => const TodoListPage());
          case TimerPage.path:
            return MaterialPageRoute(builder: (context) => const TimerPage());
          case MusicPage.path:
            return MaterialPageRoute(builder: (context) => const MusicPage());
          case StopWatchPage.path:
            return MaterialPageRoute(
                builder: (context) => const StopWatchPage());
        }
      },
    );
  }
}
