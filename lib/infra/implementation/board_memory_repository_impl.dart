import 'package:todo_solve_list/core/entities/board.dart';
import 'package:todo_solve_list/infra/interface/i_board_repository.dart';

class BoardMemoryRepositoryImpl implements IBoardRepository {
  @override
  Future<String> createNewBoard({required Board board}) async =>
      "Board created successfully!";
}
