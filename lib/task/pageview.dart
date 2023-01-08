
import 'package:flutter/material.dart';
import 'package:untitled/task/second_screen.dart';

import 'advanced_task.dart';

class PageCon extends StatefulWidget {
  const PageCon({Key? key}) : super(key: key);

  @override
  State<PageCon> createState() => _PageConState();
}

class _PageConState extends State<PageCon> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        Task(),
        SecondScreen(),
      ],

    );
  }
}
