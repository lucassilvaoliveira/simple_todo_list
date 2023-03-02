import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_solve_list/global/constants.dart';

class SplashContent extends StatelessWidget {
  final Size size;
  final String title;
  final String subTitle;
  final String assetImage;

  const SplashContent({
    super.key,
    required this.size,
    required this.title,
    required this.subTitle,
    required this.assetImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.grey, fontSize: 15),
        ),
        SizedBox(height: size.height * .1),
        SvgPicture.asset(
          assetImage,
          width: size.width * .5,
        )
      ],
    );
  }
}
