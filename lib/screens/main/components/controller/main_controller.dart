import 'package:flutter/material.dart';
import 'package:todo_solve_list/core/entities/board.dart';
import 'package:uuid/uuid.dart';

class MainController extends ChangeNotifier {
  TextEditingController boardNameController = TextEditingController();
  bool isLoading = false;

  final uuid = const Uuid();

  createNewBoard() {
    isLoading = true;
    notifyListeners();
    memoryBoards.add(
      Board(
        id: uuid.v4(),
        boardName: boardNameController.text,
        cardsList: null,
        createdAt: DateTime.now(),
      ),
    );
    isLoading = false;
    boardNameController.clear();
    notifyListeners();
  }
}
