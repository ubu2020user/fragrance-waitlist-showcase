import 'package:flutter/material.dart';
import 'package:fragrance/components/benefits/benefits.dart';
import 'package:fragrance/components/description_text.dart';
import 'package:fragrance/components/headline_text.dart';
import 'package:fragrance/components/notice.dart';
import 'package:fragrance/components/notify_me_button.dart';

import '../../../components/image_preview_carousel.dart';
import '../../../components/ingredients/ingredients.dart';
import '../../../components/perfume_sizes/perfume_sizes.dart';
import '../../../i18n/strings.g.dart';

/// The body content of the landing page. <br/>
/// This widget is used by [LandingPage].
class LandingPageBody extends StatefulWidget {
  const LandingPageBody({super.key});

  @override
  State<LandingPageBody> createState() => _LandingPageBodyState();
}

class _LandingPageBodyState extends State<LandingPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surfaceContainerLowest,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8),
            ImagePreviewCarousel(),
            SizedBox(height: 32),
            HeadlineText(),
            SizedBox(height: 12),
            NotifyMeButton(),
            SizedBox(height: 32),
            Text(
              t.sizes,
              style: TextStyle(
                fontSize: 24.0,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            PerfumeSizes(),
            SizedBox(height: 32),
            DescriptionText(),
            SizedBox(height: 16),
            Ingredients(),
            SizedBox(height: 32),
            Benefits(),
            SizedBox(height: 128),
            Notice(),
          ],
        ),
      ),
    );
  }
}
