import 'package:flutter/material.dart';
import 'package:fragrance/components/benefits/benefit_list.dart';
import 'package:fragrance/components/benefits/widgets/benefits_dots_indicator.dart';

import '../../i18n/strings.g.dart';

class Benefits extends StatefulWidget {
  const Benefits({super.key});

  @override
  State<Benefits> createState() => _BenefitsState();
}

class _BenefitsState extends State<Benefits> {
  final pageController = PageController(viewportFraction: 0.8);

  bool _isDisposed = false;
  List<Widget> _benefits = [];

  @override
  void initState() {
    // listener needed to update the page indicator
    pageController.addListener(() => setState(() {}));

    _autoScrollBenefits();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _benefits = benefitList(context);

    var currentIndex =
        pageController.hasClients && pageController.positions.isNotEmpty
            ? pageController.page?.round() ?? 0
            : 0;

    return Column(
      children: [
        Text(
          t.benefits.Benefits,
          style: TextStyle(
            fontSize: 24.0,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        Container(
          height: 170,
          child: PageView.builder(
            controller: pageController,
            itemCount: _benefits.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return _benefits[index];
            },
          ),
        ),
        BenefitsDotsIndicator(
          currentIndex: currentIndex,
          pageController: pageController,
          benefits: _benefits,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _isDisposed = true;
    super.dispose();
  }

  Future _autoScrollBenefits() async {
    await Future.delayed(Duration(seconds: 4));
    if (_isDisposed) return;
    if (pageController.hasClients) {
      if (pageController.page == _benefits.length - 1) {
        // pageController.jumpToPage(0);
        pageController.animateToPage(
          0,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        pageController.nextPage(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }

      _autoScrollBenefits();
    }
  }
}
