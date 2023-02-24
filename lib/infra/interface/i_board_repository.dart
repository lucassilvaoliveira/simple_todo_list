import 'package:todo_solve_list/core/entities/board.dart';

abstract class IBoardRepository {
  Future<String> createNewBoard({required Board board});
}
