import 'package:flutter/material.dart';

import '../../../i18n/strings.g.dart';

/// A widget that displays the pre-title text. <br/>
/// This widget is used in the [AppBarContentWidget] widget. <br/>
class PreTitleText extends StatelessWidget {
  const PreTitleText({
    super.key,
    required this.appBarHeight,
    required this.maxHeight,
  });

  final double appBarHeight, maxHeight;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: (appBarHeight) / maxHeight,
      duration: Duration(milliseconds: 100),
      child: Container(
        color: Theme.of(context).colorScheme.surfaceContainerLowest,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text.rich(
              TextSpan(
                text: '',
                style: TextStyle(fontSize: 16.0, fontFamily: "Poppins"),
                children: <TextSpan>[
                  TextSpan(
                    text: 'F',
                    style: TextStyle(fontSize: 20.0, fontFamily: "Courgette"),
                  ),
                  TextSpan(text: 'ragrance ${t.headerText.isAllAbout} '),
                  TextSpan(
                    text: t.headerText.simplicity,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ', '),
                  TextSpan(
                    text: t.headerText.quality,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ', ${t.and} '),
                  TextSpan(
                    text: t.headerText.elegance,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: '.'),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
