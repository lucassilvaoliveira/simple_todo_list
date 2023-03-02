import 'package:flutter/material.dart';
import 'package:todo_solve_list/screens/welcome/components/presenter/welcome_presenter.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomePresenter(),
    );
  }
}
