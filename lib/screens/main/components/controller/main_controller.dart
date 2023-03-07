import 'package:boardview/board_item.dart';
import 'package:boardview/board_list.dart';
import 'package:boardview/boardview_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_solve_list/screens/main/model/board_item_object.dart';
import 'package:todo_solve_list/screens/main/model/board_list_object.dart';

class MainController extends ChangeNotifier {
  List<BoardList> lists = [];
  BoardViewController boardViewController = BoardViewController();
  TextEditingController newCardTitleController = TextEditingController();
  List<BoardListObject> listData = [
    BoardListObject(title: "To do", items: [
      BoardItemObject(
        title: "test",
      ),
      BoardItemObject(
        title: "test 2",
      ),
    ]),
    BoardListObject(title: "Doeing"),
    BoardListObject(title: "Finished")
  ];

  Widget buildBoardItem(BoardItemObject itemObject) {
    return BoardItem(
      onStartDragItem:
          (int? listIndex, int? itemIndex, BoardItemState? state) {},
      onDropItem: (int? listIndex, int? itemIndex, int? oldListIndex,
          int? oldItemIndex, BoardItemState? state) {
        var item = listData[oldListIndex!].items![oldItemIndex!];
        listData[oldListIndex].items!.removeAt(oldItemIndex);
        listData[listIndex!].items!.insert(itemIndex!, item);
      },
      onTapItem:
          (int? listIndex, int? itemIndex, BoardItemState? state) async {},
      item: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(itemObject.title!),
        ),
      ),
    );
  }

  Widget createBoardList({required BoardListObject list}) {
    List<BoardItem> items = [];
    for (int i = 0; i < list.items!.length; i++) {
      items.insert(i, buildBoardItem(list.items![i]) as BoardItem);
    }

    return BoardList(
      onStartDragList: (int? listIndex) {},
      onTapList: (int? listIndex) async {},
      onDropList: (int? listIndex, int? oldListIndex) {
        var list = listData[oldListIndex!];
        listData.removeAt(oldListIndex);
        listData.insert(listIndex!, list);
      },
      headerBackgroundColor: const Color.fromARGB(255, 235, 236, 240),
      backgroundColor: const Color.fromARGB(255, 235, 236, 240),
      header: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              list.title!,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
      ],
      items: items,
    );
  }
}
