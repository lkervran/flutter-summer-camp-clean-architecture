# 🔥 Day 28 — Campfire Stories

Code without tests is just a rumor. 🔥 Tonight you'll write tests the way the real project does —
with **`givn`**, our in-house **Given / When / Then** framework. Good news, campers: `mini_front`
ships the *real* givn library (it's vendored at `packages/utilities/givn`), so you're learning the
actual tool, not a stand-in.

## 🎯 Your adventure

Write `givn` tests for the cabins feature — one unit test and one widget test:

**Unit test (logic):**
1. Mock the `CabinsRepository` with Mockito (`@GenerateNiceMocks`), and **override**
   `cabinsRepositoryProvider` with it via the `providers:` callback.
2. Write a `given(...).when(...).then(...)` test: *given* a repository returning a few cabins, *when*
   `cabinsProvider` loads, *then* the state holds those cabins (assert with **`shouldly`**).
3. Add the error path with **`.thenShouldThrow`**: *given* a repository that throws, *when* it loads,
   *then* the error surfaces.

**Widget test (UI):**
4. Use **`givenWidget(...)`** to pump the app (or the cabins screen) with the real `bindProviders()`
   overrides, let it settle, and assert the cabins are on screen.

No real network — everything goes through the mock / fake source.

## 🏅 Earn your badge when

- A `given/when/then` unit test passes with the repository mocked and the provider overridden.
- The error path is covered with `.thenShouldThrow`.
- A `givenWidget` test renders the cabins.
- Assertions use `shouldly`; tests read as behavior (Given/When/Then), not method names.

## 📍 Where to dig

```
mini_front/packages/utilities/givn/                       ← the vendored givn library (import package:givn/givn.dart)
mini_front/packages/features/cabins/data/test/            ← put the unit test here
mini_front/apps/camp_app/test/                            ← the givenWidget test
```

## 🛠️ Generate the mock, then run

```bash
cd mini_front/packages/features/cabins/data
dart run build_runner build --delete-conflicting-outputs   # generates the Mockito *.mocks.dart
cd ../../../../ && flutter test                             # run the whole workspace's tests
```

<details>
<summary>🔦 Stuck at the campfire? (hint)</summary>

`import 'package:givn/givn.dart';`. Declare the mock with `@GenerateNiceMocks([MockSpec<CabinsRepository>()])`
and import the generated `*.mocks.dart`. In `given(..., mocks: [MockCabinsRepository()], providers: (context) => [
cabinsRepositoryProvider.overrideWith((ref) => context.mockOf<CabinsRepository>())])`, stub the mock in
the body with `when(context.mockOf<CabinsRepository>().fetchCabins()).thenAnswer(...)`, return
`cabinsProvider`, then read `context.ref.read(sut.future)` in `.when`. For the widget test, the
`givenWidget` `.when` gets `(sut, context, tester, providers)` — pump `ProviderScope(overrides: providers, child: sut)`.
</details>

---

> ### 🏕️ Camp Rule of the Day — Test the logic, mock the edges
> Because logic lives in providers (not widgets) and features depend on *interfaces*, testing is easy:
> mock the repository, drive the provider, assert the state. You only ever mock your **direct**
> dependencies — never the framework, never Freezed models. 🧪
