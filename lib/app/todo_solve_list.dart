import 'package:flutter/material.dart';
import 'package:todo_solve_list/screens/main/main_screen.dart';

class TodoSolveList extends StatelessWidget {
  const TodoSolveList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}