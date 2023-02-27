import 'package:flutter_test/flutter_test.dart';
import 'package:todo_solve_list/core/entities/card.dart';
import 'package:todo_solve_list/core/entities/cards_list.dart';
import 'package:todo_solve_list/core/usecases/card/create_new_card_use_case.dart';
import 'package:todo_solve_list/core/usecases/card/move_card_use_case.dart';
import 'package:todo_solve_list/infra/implementation/card_memory_repository_impl.dart';

void main() {
  test('Should be create an new card', () async {
    const messageWhenCardCreated = "Card created successfully!";

    final createNewCardUseCase =
        CreateNewCardUseCase(iCardRepository: CardMemoryRepositoryImpl());

    final sut = await createNewCardUseCase.execute(
        card: Card(id: "1", cardTitle: "cardTitle", createdAt: DateTime.now()));

    expect(sut, messageWhenCardCreated);
  });

  test('Should be not create new card because card is null', () async {
    const messageWhenCardNotCreated = "is Not possible create an null card!";

    final createNewCardUseCase =
        CreateNewCardUseCase(iCardRepository: CardMemoryRepositoryImpl());

    final sut = await createNewCardUseCase.execute(card: null);

    expect(sut, messageWhenCardNotCreated);
  });

  test('Should be move card to another cards list', () async {
    final firstCardsList = CardsList(
      id: "1",
      listTitle: "listTitle",
      cards: [Card(id: "1", cardTitle: "cardTitle", createdAt: DateTime.now())],
      createdAt: DateTime.now(),
    );

    final secondCardsList = CardsList(
      id: "1",
      listTitle: "listTitle",
      cards: null,
      createdAt: DateTime.now(),
    );

    final moveCardUseCase =
        MoveCardUseCase(iCardRepository: CardMemoryRepositoryImpl());

    final sut = await moveCardUseCase.execute(
      card: firstCardsList.cards?.first,
      actualList: firstCardsList,
      cardsListToMove: secondCardsList,
    );

    expect(sut, "Card moved successfully!");
  });
}
