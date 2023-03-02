import 'package:flutter/material.dart';
import 'package:todo_solve_list/screens/main/components/controller/main_controller.dart';
import 'package:todo_solve_list/screens/main/components/view/main_view.dart';

class MainPresenter extends StatefulWidget {
  const MainPresenter({super.key});

  @override
  State<MainPresenter> createState() => _MainPresenterState();
}

class _MainPresenterState extends State<MainPresenter> {
  late MainController mainController;

  @override
  void initState() {
    super.initState();
    mainController = MainController();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: mainController,
      builder: (context, child) => MainView(
        mainController: mainController,
      ),
    );
  }
}
