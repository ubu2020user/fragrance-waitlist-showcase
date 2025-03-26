import 'package:flutter/material.dart';

import '../../../i18n/strings.g.dart';

class InputLastNameWidget extends StatelessWidget {
  const InputLastNameWidget({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofillHints: [AutofillHints.familyName],
      controller: controller,
      decoration: InputDecoration(
        labelText: t.name.lastName,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
