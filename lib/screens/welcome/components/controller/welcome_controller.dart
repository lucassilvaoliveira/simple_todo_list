import 'package:flutter/cupertino.dart';
import 'package:todo_solve_list/screens/main/main_screen.dart';

class WelcomeController extends ChangeNotifier {
  int currentPage = 0;
  PageController pageController = PageController();
  List<Map<String, String>> splashData = [
    {
      "title": "Solve todo app",
      "subTitle": "Bem-vindos Simon e Norton!",
      "assetImage": "assets/welcome.svg"
    },
    {
      "title": "O app",
      "subTitle":
          "Desenvolvi o app aplicando alguns conhecimentos \n(Tdd, Clean architeture, SOLID) e também uma arquitetura para views que eu desenvolvi!",
      "assetImage": "assets/programmer.svg"
    },
    {
      "title": "Escalabilidade",
      "subTitle":
          "Do jeito que o app foi feito, é bem fácil escalar, aplicar banco de dados e etc...",
      "assetImage": "assets/up.svg"
    }
  ];

  nextPage({required BuildContext context}) {
    if (pageController.page != null) {
      pageController.page! > 1.0
          ? Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const MainScreen(),
              ),
            )
          : pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.linear,
            );
    }
  }
}
