// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:smart_kitchen/main.dart';
import 'package:smart_kitchen/src/features/kitchen/data/datasources/kitchen_local_data_source.dart';
import 'package:smart_kitchen/src/features/products/data/datasources/products_local_data_source.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    final kitchenLocalDataSource = KitchenLocalDataSource();
    final productsLocalDataSource = ProductsLocalDataSource();

    await kitchenLocalDataSource.initializeDatabase();
    await productsLocalDataSource.initializeDatabase();

    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MyApp(
        kitchenDataSource: kitchenLocalDataSource,
        productsDataSource: productsLocalDataSource,
      ),
    );

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
