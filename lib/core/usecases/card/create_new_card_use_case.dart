import 'package:todo_solve_list/core/entities/card.dart';
import 'package:todo_solve_list/infra/interface/i_card_repository.dart';

class CreateNewCardUseCase {
  final ICardRepository iCardRepository;

  CreateNewCardUseCase({required this.iCardRepository});

  Future execute({required Card? card}) async {
    if (card != null) {
      return await iCardRepository.createNewCard(card: card);
    }

    return "is Not possible create an null card!";
  }
}
