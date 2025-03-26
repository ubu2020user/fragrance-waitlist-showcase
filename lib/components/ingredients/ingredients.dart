import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fragrance/components/ingredients/ingredient.dart';
import 'package:fragrance/i18n/strings.g.dart';
import 'package:fragrance/pages/landing/landing_page.dart';
import 'package:fragrance/utils/is_mobile.dart';

/// Hardcoded ingredients widget that displays the ingredients of the perfume. <br/>
/// Used by [LandingPage].
class Ingredients extends StatelessWidget {
  const Ingredients({super.key});

  @override
  Widget build(BuildContext context) {
    final spacer = SizedBox(height: isMobile(context) ? 32 + 24 : 8);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        // Generate 100 widgets that display their index in the list.
        children: [
          Text(
            t.Ingredients,
            style: TextStyle(
              fontSize: 24.0,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          spacer,
          Ingredient(
            imagePath: 'assets/ingredients/vanilla.png',
            title: t.Vanilla.first,
            description: t.Vanilla.last,
            isImageLeft: true,
          ),
          spacer,
          Ingredient(
            imagePath: 'assets/ingredients/pinkpepper.jpg',
            title: t.PinkPeppercorn.first,
            description: t.PinkPeppercorn.last,
            isImageLeft: false,
          ),
          spacer,
          Ingredient(
            imagePath: 'assets/ingredients/amber.jpg',
            title: t.Amber.first,
            description: t.Amber.last,
            isImageLeft: true,
            height: 150,
          ),
          spacer,
          Ingredient(
            imagePath: 'assets/ingredients/calamus.png',
            title: t.Calamus.first,
            description: t.Calamus.last,
            isImageLeft: false,
          ),
          spacer,
          Ingredient(
            imagePath: 'assets/ingredients/wood.jpg',
            title: t.Cypriol.first,
            description: t.Cypriol.last,
            isImageLeft: true,
          ),
        ],
      ),
    );
  }
}
