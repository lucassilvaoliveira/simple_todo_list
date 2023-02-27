import 'package:todo_solve_list/core/entities/card.dart';
import 'package:todo_solve_list/core/entities/cards_list.dart';
import 'package:todo_solve_list/infra/interface/i_card_repository.dart';

class CardMemoryRepositoryImpl implements ICardRepository {
  @override
  Future<String> createNewCard({required Card card}) async =>
      "Card created successfully!";

  @override
  Future<String> moveCardToNewList({
    required Card card,
    required CardsList listToRemove,
    required CardsList listToMove,
  }) async {
    listToMove.cards?.remove(card);
    listToMove.cards?.add(card);
    return "Card moved successfully!";
  }
}
