import 'package:base_application/base_application.dart';
import 'package:base_providers/base_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:givn/givn.dart';

void main() {
  givenWidget(
    'the camp app wired with the real cabins feature',
    (context) => const CampApp(),
    providers: (context) => campOverrides(),
  )
      .when('it boots and the cabins finish loading', (sut, context, tester, providers) async {
        await tester.pumpWidget(ProviderScope(overrides: providers, child: sut));
        // First frame: the router builds and the cabins are still loading.
        await tester.pump();
        expect(find.byType(CircularProgressIndicator), findsOneWidget);
        // Let the fake data source's delay resolve.
        await tester.pump(const Duration(milliseconds: 500));
        await tester.pump();
      })
      .then('a loader showed first, then the cabins are listed', (result, context, tester) {
        expect(find.text('🏕️ Cabins'), findsOneWidget);
        expect(find.text('Otter Lodge'), findsOneWidget);
        expect(find.text('Bear Cave'), findsOneWidget);
      });
}
