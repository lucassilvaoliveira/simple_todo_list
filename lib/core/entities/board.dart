import 'package:todo_solve_list/core/entities/card.dart';
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

List<Board> memoryBoards = [
  Board(
    id: "1",
    boardName: "quadro 1",
    cardsList: [
      CardsList(
        id: "1",
        listTitle: "To do",
        cards: [
          Card(
            id: "1",
            cardTitle: "card 1",
            createdAt: DateTime.now(),
          ),
          Card(
            id: "2",
            cardTitle: "card 2",
            createdAt: DateTime.now(),
          )
        ],
        createdAt: DateTime.now(),
      ),
      CardsList(
        id: "2",
        listTitle: "Doeing",
        cards: [],
        createdAt: DateTime.now(),
      ),
      CardsList(
        id: "3",
        listTitle: "Finished",
        cards: [],
        createdAt: DateTime.now(),
      )
    ],
    createdAt: DateTime.now(),
  ),
  Board(
    id: "2",
    boardName: "quadro 2",
    cardsList: [],
    createdAt: DateTime.now(),
  ),
  Board(
    id: "3",
    boardName: "quadro 3",
    cardsList: [],
    createdAt: DateTime.now(),
  )
];
