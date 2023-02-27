import 'package:todo_solve_list/core/entities/cards_list.dart';

abstract class ICardsListRepository {
  Future<String> createNewCardsList({required CardsList cardsList});
}
