import 'package:flutter/material.dart';
import 'package:todo_solve_list/core/entities/board.dart';
import 'package:todo_solve_list/screens/open_board/components/controller/open_board_controller.dart';

class OpenBoardView extends StatelessWidget {
  final OpenBoardController openBoardController;
  final Board board;
  const OpenBoardView({
    super.key,
    required this.openBoardController,
    required this.board,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Center(
        child: Text(board.id!),
      ),
    );
  }
}
