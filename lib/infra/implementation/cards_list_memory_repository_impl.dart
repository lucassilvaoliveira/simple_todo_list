import 'package:todo_solve_list/core/entities/cards_list.dart';
import 'package:todo_solve_list/infra/interface/i_cards_list_repository.dart';

class CardsListMemoryRepositoryImpl implements ICardsListRepository {
  @override
  Future<String> createNewCardsList({required CardsList cardsList}) async =>
      "Cards list created successfully!";
}
