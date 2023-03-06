import 'package:flutter/material.dart';
import 'package:todo_solve_list/global/constants.dart';
import 'package:todo_solve_list/global/default_button.dart';
import 'package:todo_solve_list/screens/welcome/components/controller/welcome_controller.dart';
import 'package:todo_solve_list/screens/welcome/components/splash_content.dart';

class WelcomeView extends StatefulWidget {
  final WelcomeController welcomeController;

  const WelcomeView({
    super.key,
    required this.welcomeController,
  });

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        height: size.height,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: size.height * .05),
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: widget.welcomeController.pageController,
                onPageChanged: (value) {
                  setState(() {
                    widget.welcomeController.currentPage = value;
                  });
                },
                itemCount: widget.welcomeController.splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  size: size,
                  title: widget.welcomeController.splashData[index]["title"] !=
                          null
                      ? widget.welcomeController.splashData[index]["title"]!
                      : "test2",
                  subTitle: widget.welcomeController.splashData[index]
                              ["subTitle"] !=
                          null
                      ? widget.welcomeController.splashData[index]["subTitle"]!
                      : "test2",
                  assetImage: widget.welcomeController.splashData[index]
                              ["assetImage"] !=
                          null
                      ? widget.welcomeController.splashData[index]
                          ["assetImage"]!
                      : "test2",
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      widget.welcomeController.splashData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  const Spacer(flex: 3),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.height * .1),
                    child: DefaultButton(
                      size: size,
                      text: "Continue",
                      fontSize: 18,
                      press: () {
                        widget.welcomeController.nextPage(context: context);
                      },
                      height: size.height * .08,
                      width: size.width * .5,
                      color: kPrimaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: widget.welcomeController.currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: widget.welcomeController.currentPage == index
            ? kPrimaryColor
            : Colors.grey,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
