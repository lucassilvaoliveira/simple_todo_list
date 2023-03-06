import 'package:boardview/board_list.dart';
import 'package:boardview/boardview.dart';
import 'package:flutter/material.dart';
import 'package:todo_solve_list/screens/main/components/controller/main_controller.dart';

class MainView extends StatelessWidget {
  final MainController mainController;

  const MainView({super.key, required this.mainController});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    for (int i = 0; i < mainController.listData.length; i++) {
      mainController.lists.add(
        mainController.createBoardList(
            list: mainController.listData[i], context: context) as BoardList,
      );
    }
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * .05),
      child: BoardView(
        lists: mainController.lists,
        boardViewController: mainController.boardViewController,
      ),
    );
  }
}
