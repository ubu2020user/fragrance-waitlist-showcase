import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fragrance/components/notice.dart';
import 'package:fragrance/i18n/strings.g.dart';

void main() {
  testWidgets('NotifyMeButton displays correctly and triggers onPressed', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        supportedLocales: [Locale('en')],
        home: Scaffold(body: Notice()),
      ),
    );

    // Verify the button is displayed with the correct text
    expect(find.text(t.notice.title), findsOneWidget);
    expect(find.text(t.notice.description), findsOneWidget);
    expect(find.text(t.notice.visitDiptyque), findsOneWidget);

    final button = find.byType(TextButton);
    expect(button, findsOneWidget);
    await tester.tap(button);
    await tester.pumpAndSettle();

    expect(find.text(t.notice.visitDiptyque), findsNWidgets(2));
    final buttonVisit = find.text(t.notice.visit);
    expect(buttonVisit, findsOneWidget);
    // await tester.tap(buttonVisit);
    // await tester.pumpAndSettle();
    // // check if launchUrl was called
  });
}
