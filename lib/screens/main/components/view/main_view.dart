import 'package:boardview/board_list.dart';
import 'package:boardview/boardview.dart';
import 'package:flutter/material.dart';
import 'package:todo_solve_list/global/constants.dart';
import 'package:todo_solve_list/global/default_button.dart';
import 'package:todo_solve_list/screens/main/components/controller/main_controller.dart';
import 'package:todo_solve_list/screens/main/model/board_item_object.dart';

class MainView extends StatefulWidget {
  final MainController mainController;

  const MainView({super.key, required this.mainController});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  void initState() {
    super.initState();
    for (var i = 0; i < widget.mainController.listData.length; i++) {
      widget.mainController.lists.add(
        widget.mainController.createBoardList(
            list: widget.mainController.listData[i]) as BoardList,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * .05),
      child: BoardView(
        lists: widget.mainController.lists,
        boardViewController: widget.mainController.boardViewController,
      ),
    );
  }
}
