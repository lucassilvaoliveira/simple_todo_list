import 'package:flutter/material.dart';
import 'package:todo_solve_list/screens/main/components/view/main_view.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainView(),
    );
  }
}
