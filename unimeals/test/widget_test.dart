// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unimeals/view/pages/mainPage.dart';




void main() {

  testWidgets('Navigation from main page to restaurant page', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MainPage());

    // Verify that it finds the text "Ver localização" inside restaurant page
    expect(find.text('Grill'), findsOneWidget);
    expect(find.text('Ver localização'), findsNothing);

    // Tap the '->' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.arrow_forward_rounded));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('Grill'), findsNothing);
    expect(find.text('Ver localização'), findsOneWidget);
  });

}