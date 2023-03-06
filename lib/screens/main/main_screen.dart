import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_solve_list/global/constants.dart';
import 'package:todo_solve_list/global/default_button.dart';
import 'package:todo_solve_list/screens/main/components/controller/main_controller.dart';
import 'package:todo_solve_list/screens/main/components/presenter/main_presenter.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainPresenter(),
    );
  }
}
