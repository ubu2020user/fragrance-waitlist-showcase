import 'package:flutter/material.dart';

import '../../../i18n/strings.g.dart';

class WaitlistTitle extends StatelessWidget {
  const WaitlistTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: t.notifyMeText.beNotified,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
        ),
        children: [
          TextSpan(
            text: " Fragrance ",
            style: TextStyle(
              fontSize: 18,
              color: Theme.of(context).colorScheme.primary,
              fontFamily: "Courgette",
            ),
          ),
          TextSpan(text: t.notifyMeText.sellsFirstBottle),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
