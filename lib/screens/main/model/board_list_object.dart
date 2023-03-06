import 'package:todo_solve_list/screens/main/model/board_item_object.dart';

class BoardListObject {
  String? title;
  List<BoardItemObject>? items;

  BoardListObject({this.title, this.items}) {
    title ??= "";
    items ??= [];
  }
}
