import 'package:todo_solve_list/core/entities/card.dart';
import 'package:todo_solve_list/core/entities/cards_list.dart';

abstract class ICardRepository {
  Future<String> createNewCard({required Card card});

  Future<String> moveCardToNewList(
      {required Card card, required CardsList listToRemove, required CardsList listToMove});
}
