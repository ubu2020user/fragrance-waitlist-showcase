import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fragrance/i18n/strings.g.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  group('Localization Tests', ()
  {
    test('Ingredients should be translated correctly', () {
      expect(t.Ingredients, "Ingredients");
    });

    test('Vanilla should be translated correctly', () {
      expect(t.Vanilla[0], "Vanilla");
      expect(
        t.Vanilla[1],
        "Vanilla is known for its sweet and comforting scent.",
      );
    });

    test('PinkPeppercorn should be translated correctly', () {
      expect(t.PinkPeppercorn[0], "Pink Peppercorn");
      expect(
        t.PinkPeppercorn[1],
        "Pink Pepper is known for its spicy and warm scent.",
      );
    });

    test('Amber should be translated correctly', () {
      expect(t.Amber[0], "Amber");
      expect(t.Amber[1], "Amber is known for its warm and musky scent.");
    });

    test('Calamus should be translated correctly', () {
      expect(t.Calamus[0], "Calamus");
      expect(t.Calamus[1], "Calamus is known for its sweet and spicy scent.");
    });

    test('Cypriol should be translated correctly', () {
      expect(t.Cypriol[0], "Cypriol");
      expect(t.Cypriol[1], "Cypriol is known for its earthy and woody scent.");
    });

    test('headerText should be translated correctly', () {
      expect(t.headerText.isAllAbout, "is all about");
      expect(t.headerText.simplicity, "simplicity");
      expect(t.headerText.quality, "quality");
      expect(t.headerText.elegance, "elegance");
      expect(t.headerText.sustainability, "sustainability");
    });

    test('composedForElegance should be translated correctly', () {
      expect(t.composedForElegance, "Composed for Elegance");
    });

    test('notifyMe should be translated correctly', () {
      expect(t.notifyMe, "Notify Me");
    });

    test('sizes should be translated correctly', () {
      expect(t.sizes, "Sizes");
    });

    test('descriptionText should be translated correctly', () {
      expect(t.descriptionText.isA, "is a");
      expect(
        t.descriptionText.fragranceThat,
        "fragrance that is composed of the",
      );
      expect(t.descriptionText.finestIngredients, "finest ingredients");
      expect(
        t.descriptionText.eachIngredient,
        "Each ingredient is carefully selected to create a",
      );
      expect(
        t.descriptionText.readBelow,
        "scent. Read about the ingredients below.",
      );
      expect(t.descriptionText.elegant, "elegant");
      expect(t.descriptionText.unique, "unique");
    });

    test('notifyMeText should be translated correctly', () {
      expect(t.notifyMeText.beNotified, "Be notified when");
      expect(t.notifyMeText.sellsFirstBottle, "sells its first bottle.");
      expect(t.notifyMeText.youWillBeNotified, "You will be notified soon.");
      expect(t.notifyMeText.personalComment, "Personal Comment");
    });

    test('name should be translated correctly', () {
      expect(t.name.firstName, "First Name");
      expect(t.name.lastName, "Last Name");
    });

    test('email should be translated correctly', () {
      expect(t.email.emailAddress, "Email Address");
      expect(t.email.isRequired, "Email Address is required");
      expect(t.email.invalid, "Invalid email address");
    });

    test('benefits should be translated correctly', () {
      expect(t.benefits.Benefits, "Benefits");
      expect(t.benefits.paris[0], "Made in Paris");
      expect(
        t.benefits.paris[1],
        "This product is crafted in Paris by Diptyque.",
      );
      expect(t.benefits.soldInGermany[0], "Sold in Germany");
      expect(t.benefits.soldInGermany[1], "Available for purchase in Germany.");
      expect(t.benefits.transparency[0], "Transparency");
      expect(
        t.benefits.transparency[1],
        "Full transparency about partners and origins of raw materials.",
      );
      expect(t.benefits.testBeforeBuy[0], "Test before Buy");
      expect(
        t.benefits.testBeforeBuy[1],
        "A free sample with every order to try before unpacking the main perfume.",
      );
      expect(t.benefits.twoFreeSamples[0], "Two Free Samples");
      expect(
        t.benefits.twoFreeSamples[1],
        "Two free Diptyque samples with all orders.",
      );
      expect(t.benefits.visitDiptyque, "Visit Diptyque to learn more.");
      expect(t.benefits.visit, "Visit");
    });

    test('notice should be translated correctly', () {
      expect(t.notice.title, "Important Notice");
      expect(
        t.notice.description,
        "This is a non-commercial website aimed at gathering interest in this perfume. Please note, it is not affiliated with Diptyque in any way, but created by fans of the brand.",
      );
      expect(
        t.notice.visitDiptyque,
        "Visit Diptyque to learn more about the brand and its products.",
      );
      expect(t.notice.visit, "Visit");
    });
  });
}
