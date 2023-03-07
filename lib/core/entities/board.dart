import 'package:todo_solve_list/core/entities/cards_list.dart';

class Board {
  String? id;
  String? boardName;
  List<CardsList>? cardsList;
  DateTime? createdAt;

  Board({
    required this.id,
    required this.boardName,
    required this.cardsList,
    required this.createdAt,
  });
}
