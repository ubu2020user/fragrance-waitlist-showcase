import 'package:flutter/material.dart';
import 'package:fragrance/components/waitlist_modal/show_waitlist_modal.dart';

import '../i18n/strings.g.dart';

class NotifyMeButton extends StatelessWidget {
  const NotifyMeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: FilledButton.icon(
        onPressed: () async => showWaitlistModal(context),
        icon: Icon(Icons.shopping_bag_rounded),
        label: Text(t.notifyMe, style: TextStyle(fontSize: 18)),
        style: FilledButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.inverseSurface,
          foregroundColor: Theme.of(context).colorScheme.onInverseSurface,
        ),
      ),
    );
  }
}
