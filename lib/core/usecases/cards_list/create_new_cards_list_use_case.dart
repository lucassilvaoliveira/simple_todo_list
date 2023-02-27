import 'package:todo_solve_list/core/entities/cards_list.dart';
import 'package:todo_solve_list/infra/interface/i_cards_list_repository.dart';

class CreateNewCardsListUseCase {
  final ICardsListRepository iCardsListRepository;

  CreateNewCardsListUseCase({required this.iCardsListRepository});

  Future execute({required CardsList? cardsList}) async {
    if (cardsList != null) {
      return await iCardsListRepository.createNewCardsList(
          cardsList: cardsList);
    }
    return "is Not possible create an null cards list!";
  }
}
