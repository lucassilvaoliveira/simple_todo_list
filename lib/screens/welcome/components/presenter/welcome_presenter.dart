import 'package:flutter/material.dart';
import 'package:todo_solve_list/screens/welcome/components/controller/welcome_controller.dart';
import 'package:todo_solve_list/screens/welcome/components/view/welcome_view.dart';

class WelcomePresenter extends StatefulWidget {
  const WelcomePresenter({super.key});

  @override
  State<WelcomePresenter> createState() => _WelcomePresenterState();
}

class _WelcomePresenterState extends State<WelcomePresenter> {
  late WelcomeController welcomeController;

  @override
  void initState() {
    super.initState();
    welcomeController = WelcomeController();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: welcomeController,
      builder: (context, child) => WelcomeView(
        welcomeController: welcomeController,
      ),
    );
  }
}
