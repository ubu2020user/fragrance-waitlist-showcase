import 'package:flutter/material.dart';

import '../../../i18n/strings.g.dart';

class InputFirstNameWidget extends StatelessWidget {
  const InputFirstNameWidget({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofillHints: [AutofillHints.givenName],
      controller: controller,
      decoration: InputDecoration(
        labelText: t.name.firstName,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
