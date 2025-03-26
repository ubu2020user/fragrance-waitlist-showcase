import 'package:flutter/material.dart';
import 'package:fragrance/components/waitlist_modal/widgets/content.dart';

Future showWaitlistModal(BuildContext context) async {
  return await showModalBottomSheet(
    context: context,
    useSafeArea: true,
    // backgroundColor: Theme.of(context).colorScheme.surface,
    // showDragHandle: true,
    builder: (context) => WaitlistContent(),
  );
}
