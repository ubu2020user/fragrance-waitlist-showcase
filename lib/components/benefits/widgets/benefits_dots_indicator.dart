import 'package:flutter/material.dart';

class BenefitsDotsIndicator extends StatelessWidget {
  const BenefitsDotsIndicator({super.key, required this.currentIndex, required this.pageController, required this.benefits});

  final int currentIndex;
  final PageController pageController;
  final List<dynamic> benefits;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        benefits.length,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              pageController.animateToPage(
                index,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            child: CircleAvatar(
              radius: 4.0,
              backgroundColor:
                  currentIndex == index
                      ? Color.fromARGB(255, 225, 211, 166)
                      : Color.fromARGB(255, 225, 211, 166).withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }
}
