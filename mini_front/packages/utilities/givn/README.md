# givn

The in-house **Given / When / Then** test framework, with native Mockito + Riverpod integration —
the same one the real project uses for every unit and widget test.

This is **vendored verbatim** from flutter-front (`packages/utilities/givn`). Its source depends only
on public packages (`flutter_test`, `mockito`, `riverpod_annotation`), so the camp can ship and teach
the real tool.

**Import:** `package:givn/givn.dart`

## API at a glance

```dart
// Unit test
given('a business scenario', (context) => sut, mocks: [MockRepo()], providers: (context) => [...])
    .when('the user does something', (sut, context) => action)
    .then('the outcome holds', (result, context) { result.should.be(expected); });

// …or assert that the action throws:
given(...).when(...).thenShouldThrow('it fails', (error, stackTrace, context) { ... });

// Widget test (wraps testWidgets)
givenWidget('a screen', (context) => const MyScreen(), providers: (context) => [...])
    .when('it renders', (sut, context, tester, providers) async {
      await tester.pumpWidget(ProviderScope(overrides: providers, child: sut));
      await tester.pump();
    })
    .then('the content shows', (result, context, tester) {
      expect(find.text('Hello'), findsOneWidget);
    });
```

`TestContext`: `context.mockOf<T>()`, `context.ref` (ProviderContainer), `context.namedParameterOf<T>('name')`.

> Note: the `.givn.dart` / `GivnMockClass` generator mentioned in flutter-front's own README is not
> shipped — mock `StateNotifier`s the recommended way instead: mock the **data source / repository**
> and assert on the resulting state.
