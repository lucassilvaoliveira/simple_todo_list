import 'package:flutter/material.dart';
import 'package:todo_solve_list/global/constants.dart';
import 'package:todo_solve_list/global/default_button.dart';

class TopScreenData extends StatelessWidget {
  final Size size;
  final Function() press;

  const TopScreenData({
    super.key,
    required this.size,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const Text(
            "Quadros",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          DefaultButton(
            size: size,
            text: "Novo",
            press: press,
            height: size.height * .05,
            width: size.width * .3,
            color: kPrimaryColor,
          )
        ],
      ),
    );
  }
}
