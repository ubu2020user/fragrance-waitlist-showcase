import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:fragrance/utils/is_mobile.dart';

void main() {
  group('isMobile', () {
    testWidgets('returns true when width is less than 600', (tester) async {
      final context = await _createContextWithWidth(tester, 500);
      expect(isMobile(context), true);
    });

    testWidgets('returns false when width is 600', (tester) async {
      final context = await _createContextWithWidth(tester, 600);
      expect(isMobile(context), false);
    });

    testWidgets('returns false when width is greater than 600', (tester) async {
      final context = await _createContextWithWidth(tester, 700);
      expect(isMobile(context), false);
    });
  });
}

Future<BuildContext> _createContextWithWidth(
  WidgetTester tester,
  double width,
) async {
  final mediaQueryData = MediaQueryData(size: Size(width, 800));
  final widget = MediaQuery(
    data: mediaQueryData,
    child: Builder(builder: (context) => Container()),
  );
  await tester.pumpWidget(widget);
  return tester.element(find.byType(Container));
}
