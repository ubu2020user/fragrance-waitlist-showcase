import 'package:flutter/material.dart';

import '../i18n/strings.g.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: RichText(
        text: TextSpan(
          text: "",
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: "Poppins",
            color:
                Theme.of(
                  context,
                ).colorScheme.secondary, //Color.fromARGB(255, 135, 135, 140),
            fontWeight: FontWeight.w600,
          ),
          children: [
            TextSpan(text: "Eau Duelle ${t.descriptionText.isA} "),
            TextSpan(
              text: "Diptyque",
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            ),
            TextSpan(text: " ${t.descriptionText.fragranceThat} "),
            TextSpan(
              text: t.descriptionText.finestIngredients,
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            ),
            TextSpan(text: ". ${t.descriptionText.eachIngredient} "),
            TextSpan(
              text: t.descriptionText.unique,
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            ),
            TextSpan(text: " ${t.and} "),
            TextSpan(
              text: t.descriptionText.elegant,
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            ),
            TextSpan(text: " ${t.descriptionText.readBelow}"),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
