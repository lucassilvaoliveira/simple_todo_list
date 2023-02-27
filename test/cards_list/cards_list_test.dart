import 'package:flutter_test/flutter_test.dart';
import 'package:todo_solve_list/core/entities/cards_list.dart';
import 'package:todo_solve_list/core/usecases/cards_list/create_new_cards_list_use_case.dart';
import 'package:todo_solve_list/infra/implementation/cards_list_memory_repository_impl.dart';

void main() {
  test('Should be create a new cards List', () async {
    const messageWhenCardsListCreated = "Cards list created successfully!";

    final createNewCardsListUseCase = CreateNewCardsListUseCase(
        iCardsListRepository: CardsListMemoryRepositoryImpl());

    final sut = await createNewCardsListUseCase.execute(
      cardsList: CardsList(
        id: "1",
        listTitle: "listTitle",
        cards: [],
        createdAt: DateTime.now(),
      ),
    );

    expect(sut, messageWhenCardsListCreated);
  });
}
