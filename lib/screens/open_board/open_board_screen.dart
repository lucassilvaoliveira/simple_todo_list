import 'package:flutter/material.dart';
import 'package:todo_solve_list/core/entities/board.dart';
import 'package:todo_solve_list/screens/open_board/components/presenter/open_board_presenter.dart';

class OpenBoardScreen extends StatelessWidget {
  final Board board;
  const OpenBoardScreen({super.key, required this.board});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OpenBoardPresenter(board: board),
    );
  }
}
