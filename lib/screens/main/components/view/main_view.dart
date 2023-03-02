import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_solve_list/screens/main/components/build_boards.dart';
import 'package:todo_solve_list/screens/main/components/controller/main_controller.dart';
import 'package:todo_solve_list/screens/main/components/top_screen_data.dart';

class MainView extends StatefulWidget {
  final MainController mainController;
  const MainView({super.key, required this.mainController});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TopScreenData(
              size: size,
              press: () {
                showNewBoardModal(context);
              },
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * .02),
              height: size.height * .8,
              child: BuildBoards(size: size),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> showNewBoardModal(BuildContext context) {
    return showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text("Novo quadro"),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Board name"),
            CupertinoTextField(
              controller: widget.mainController.boardNameController,
            ),
          ],
        ),
        actions: [
          CupertinoDialogAction(
            child: const Text(
              "Close",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            onPressed: () => Navigator.pop(context),
          ),
          CupertinoDialogAction(
            child: const Text(
              "Create",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            onPressed: () {
              widget.mainController.createNewBoard();
              Navigator.pop(context);
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
