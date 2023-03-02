import 'package:flutter/material.dart';
import 'package:todo_solve_list/core/entities/board.dart';
import 'package:todo_solve_list/screens/open_board/components/controller/open_board_controller.dart';
import 'package:todo_solve_list/screens/open_board/components/view/open_board_view.dart';

class OpenBoardPresenter extends StatefulWidget {
  final Board board;
  const OpenBoardPresenter({super.key, required this.board});

  @override
  State<OpenBoardPresenter> createState() => _OpenBoardPresenterState();
}

class _OpenBoardPresenterState extends State<OpenBoardPresenter> {
  late OpenBoardController openBoardController;

  @override
  void initState() {
    super.initState();
    openBoardController = OpenBoardController();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: openBoardController,
      builder: (context, child) => OpenBoardView(
        openBoardController: openBoardController,
        board: widget.board,
      ),
    );
  }
}
