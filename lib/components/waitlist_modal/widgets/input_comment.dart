import 'package:flutter/material.dart';

import '../../../i18n/strings.g.dart';

class InputCommentWidget extends StatelessWidget {
  const InputCommentWidget({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: 3,
      decoration: InputDecoration(
        labelText: t.notifyMeText.personalComment,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
