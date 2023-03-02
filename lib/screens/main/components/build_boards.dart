import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_solve_list/core/entities/board.dart';
import 'package:todo_solve_list/global/constants.dart';
import 'package:todo_solve_list/screens/open_board/open_board_screen.dart';

class BuildBoards extends StatelessWidget {
  const BuildBoards({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: memoryBoards.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => OpenBoardScreen(
              board: memoryBoards[index],
            ),
          ),
        ),
        child: Container(
          height: size.height * .15,
          width: size.width * .15,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.5),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  memoryBoards[index].boardName!,
                ),
                const Spacer(),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Cards list: ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: memoryBoards[index].cardsList?.length.toString(),
                        style: TextStyle(
                          color: kPrimaryColor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
