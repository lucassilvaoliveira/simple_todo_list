import 'package:todo_solve_list/core/entities/board.dart';
import 'package:todo_solve_list/infra/interface/i_board_repository.dart';

class CreateNewBoardUseCase {
  final IBoardRepository iBoardRepository;

  CreateNewBoardUseCase({required this.iBoardRepository});

  Future execute({required Board? board}) async {
    if (board != null) {
      return await iBoardRepository.createNewBoard(board: board);
    }

    return "is Not possible create an null board!";
  }
}
