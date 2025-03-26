import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fragrance/components/notify_me_button.dart';
import 'package:fragrance/i18n/strings.g.dart';

void main() {
  testWidgets('NotifyMeButton displays correctly and triggers onPressed', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        supportedLocales: [Locale('en')],
        home: Scaffold(body: NotifyMeButton()),
      ),
    );

    // Verify the button is displayed with the correct text
    expect(find.text(t.notifyMe), findsOneWidget);
    expect(find.byIcon(Icons.shopping_bag_rounded), findsOneWidget);

    final button = find.byElementPredicate(
      (element) => element.widget.toString() == "_FilledButtonWithIconChild",
    );

    expect(button, findsOneWidget);
    await tester.tap(button);
    await tester.pumpAndSettle();

    /* When modal is opened
     * 1. Notify Me on page
     * 2. Noify Me on modal title
     * 3. Notify Me on modal button
     */
    expect(find.text(t.notifyMe), findsNWidgets(3));
    expect(find.text("${t.email.emailAddress} *"), findsOneWidget);
  });
}
