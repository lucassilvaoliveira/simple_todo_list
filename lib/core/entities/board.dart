import 'package:todo_solve_list/core/entities/cards_list.dart';

class Board {
  String? id;
  String? boardName;
  List<CardsList>? cardsList;

  Board({required this.id, required this.boardName, required this.cardsList});
}
