import 'package:flutter/material.dart';
import 'package:fragrance/components/benefits/benefits.dart';
import 'package:fragrance/components/benefits/widgets/benefit_card.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../i18n/strings.g.dart';

/// Hardcoded list of benefits to show in the benefits section in [Benefits]. <br/>
/// Used in build Method so that the benefits can be displayed dynamically with changing locale.
List<Widget> benefitList(BuildContext context) => [
  BenefitCard(
    title: t.benefits.paris.first,
    icon: Icon(Icons.travel_explore_rounded),
    description: t.benefits.paris.last,
  ),
  BenefitCard(
    title: t.benefits.soldInGermany.first,
    icon: Icon(Icons.local_shipping_rounded),
    description: t.benefits.soldInGermany.last,
  ),
  BenefitCard(
    icon: Icon(Icons.recycling_rounded),
    title: t.benefits.transparency.first,
    description: t.benefits.transparency.last,
    onTap: () {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(t.benefits.visitDiptyque),
          action: SnackBarAction(
            label: t.benefits.visit,
            onPressed: () {
              launchUrl(
                Uri.parse(
                  "https://transparency.diptyqueparis.com/?01=3700431416353&10=DIPT60&#/tabs/traceability",
                ),
                webViewConfiguration: WebViewConfiguration(
                  enableJavaScript: false,
                  enableDomStorage: false,
                ),
              );
            },
          ),
        ),
      );
    },
  ),
  BenefitCard(
    icon: Icon(Icons.card_giftcard_rounded),
    title: t.benefits.testBeforeBuy.first,
    description: t.benefits.testBeforeBuy.last,
  ),
  BenefitCard(
    icon: Icon(Icons.card_giftcard_rounded),
    title: t.benefits.twoFreeSamples.first,
    description: t.benefits.twoFreeSamples.last,
  ),
];
