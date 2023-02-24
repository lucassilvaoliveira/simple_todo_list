import 'package:flutter_test/flutter_test.dart';
import 'package:todo_solve_list/core/entities/board.dart';
import 'package:todo_solve_list/core/usecases/board/create_new_board_use_case.dart';
import 'package:todo_solve_list/infra/implementation/board_memory_repository_impl.dart';

void main() {
  test('Should be create new board', () async {
    const messageWhenBoardCreated = "Board created successfully!";

    final createNewBoardUseCase =
        CreateNewBoardUseCase(iBoardRepository: BoardMemoryRepositoryImpl());

    final sut = await createNewBoardUseCase.execute(
      board: Board(id: "1", boardName: "boardName", cardsList: []),
    );

    expect(sut, messageWhenBoardCreated);
  });

  test('Should be not create new board because board is null', () async {
    const messageWhenBoardNotCreated = "is Not possible create an null board!";
    final createNewBoardUseCase =
        CreateNewBoardUseCase(iBoardRepository: BoardMemoryRepositoryImpl());

    final sut = await createNewBoardUseCase.execute(
      board: null,
    );

    expect(sut, messageWhenBoardNotCreated);
  });
}
