import 'package:flutter/material.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/constants.dart';

class InputMailWidget extends StatelessWidget {
  const InputMailWidget({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      autofillHints: [AutofillHints.email],
      decoration: InputDecoration(
        labelText: "${t.email.emailAddress} *",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      validator: (value) => _validateMailInput(value),
    );
  }
}

String? _validateMailInput(String? value) {
  if (value == null || value.trim().isEmpty) {
    return t.email.isRequired;
  }

  final regex = RegExp(emailRegexPattern);

  if (!regex.hasMatch(value)) {
    return t.email.invalid;
  }

  return null;
}
