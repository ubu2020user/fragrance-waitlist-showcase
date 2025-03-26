import 'package:flutter/material.dart';
import 'package:fragrance/components/waitlist_modal/widgets/input_first_name.dart';
import 'package:fragrance/components/waitlist_modal/widgets/input_last_name.dart';
import 'package:fragrance/components/waitlist_modal/widgets/input_mail.dart';
import 'package:fragrance/components/waitlist_modal/widgets/title.dart';
import 'package:fragrance/i18n/strings.g.dart';

import '../../../../../utils/constants.dart';
import '../push_to_waitlist.dart';
import 'input_comment.dart';

/// The content of the waitlist modal used by the [WaitlistModalWidget].
class WaitlistContent extends StatefulWidget {
  const WaitlistContent({super.key});

  @override
  State<WaitlistContent> createState() => _WaitlistContentState();
}

class _WaitlistContentState extends State<WaitlistContent> {
  final key = GlobalKey<FormState>();
  final controllerMail = TextEditingController(),
      controllerFirstName = TextEditingController(),
      controllerLastName = TextEditingController(),
      controllerComment = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                t.notifyMe,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 24),
              WaitlistTitle(),
              SizedBox(height: 24),
              InputMailWidget(controller: controllerMail),
              SizedBox(height: 24),
              Row(
                children: [
                  Expanded(child: InputFirstNameWidget(controller: controllerFirstName)),
                  SizedBox(width: 16),
                  Expanded(child: InputLastNameWidget(controller: controllerLastName)),
                ],
              ),
              SizedBox(height: 12),
              InputCommentWidget(controller: controllerComment),
              SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: _validateInputAndPushData,
                icon: Icon(Icons.notifications),
                label: Text(t.notifyMe),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  textStyle: TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _validateInputAndPushData() async {
    if (!key.currentState!.validate()) return;

    final result = await pushToWaitlist(
      mail: controllerMail.text,
      firstName: controllerFirstName.text,
      lastName: controllerLastName.text,
      comment: controllerComment.text,
    );

    if (!result) return;

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(t.notifyMeText.youWillBeNotified)));
    Navigator.pop(context);
  }
}
