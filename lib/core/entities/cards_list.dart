import 'package:todo_solve_list/core/entities/card.dart';

class CardsList {
  String? id;
  String? listTitle;
  List<Card>? cards;
  DateTime? createdAt;

  CardsList({
    required this.id,
    required this.listTitle,
    required this.cards,
    required this.createdAt,
  });
}
