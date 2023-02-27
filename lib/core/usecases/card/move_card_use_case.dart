import 'package:todo_solve_list/core/entities/card.dart';
import 'package:todo_solve_list/core/entities/cards_list.dart';
import 'package:todo_solve_list/infra/interface/i_card_repository.dart';

class MoveCardUseCase {
  final ICardRepository iCardRepository;

  MoveCardUseCase({required this.iCardRepository});

  Future execute({
    required Card? card,
    required CardsList actualList,
    required CardsList cardsListToMove,
  }) async {
    if (card != null) {
      return await iCardRepository.moveCardToNewList(
        card: card,
        listToRemove: actualList,
        listToMove: cardsListToMove,
      );
    }
    return "there is no card in this list!";
  }
}
