import 'package:todo_solve_list/core/entities/card.dart';

class CardsList {
  String? id;
  String? listTitle;
  List<Card>? cards;

  CardsList({required this.id, required this.listTitle, required this.cards});
}
