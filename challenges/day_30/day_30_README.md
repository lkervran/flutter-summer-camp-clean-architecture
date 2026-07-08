# 🏕️ Day 30 — Capstone: Build the Whole Cabin

You made it to the summit, camper. 🏔️ Thirty days ago you couldn't center a `Text`; today you're
going to ship a **complete, three-layer feature** into a real-shaped codebase — domain, data,
presentation, wiring, routing, and tests. The graduation project. Everything you've learned, at once.

## 🎯 Your adventure

Add a brand-new feature to `mini_front` from scratch: **Activities** (the camp's bookable
activities — canoeing, archery, etc.). Build all three layers and wire it in.

**Domain layer**
- An `Activity` entity (Freezed).
- An `ActivitiesRepository` **interface**.
- Domain DI providers (the throwing declarations for what the feature needs).

**Data layer**
- An `ActivityDto` + a `fromJson` (the wire shape).
- A data source (HTTP or a fake source that returns sample activities).
- A repository **implementation** mapping DTO → entity.
- A `bindProviders()` that fulfills the domain repository (and any config it needs).

**Presentation layer**
- An `ActivitiesScreen` (`ConsumerWidget`) listing activities with proper `AsyncValue` handling.
- A provider/notifier feeding the screen.
- A `@RoutePage` route, registered so it's reachable.
- (Bonus) a tap that routes to an activity detail, using the routing-interface pattern from Day 27.

**Composition**
- Call your feature's `bindProviders()` and spread it into the app's overrides.
- Register the route so you can navigate to it.

**Tests**
- At least a happy-path and an error-path `givn` test for your feature's state logic (Day 28 style).

## 🏅 Earn your badge when (graduation checklist)

- [ ] `Activity` entity + `ActivitiesRepository` interface in **domain**.
- [ ] DTO + `fromJson`, data source, repo impl, and `bindProviders()` in **data**.
- [ ] Screen + provider + `@RoutePage` route in **presentation**, with `AsyncValue` states handled.
- [ ] Feature is wired into **composition** and reachable by navigation.
- [ ] Code generation passes; `flutter test` is green.
- [ ] No `!`, logic lives in providers, models are immutable, `.select()` where it counts — the camp
      rules, all of them.

## 📍 Where to dig

Model your new feature on the existing **`cabins`** feature — same folder shape, same patterns:

```
mini_front/packages/features/activities/{domain,data,presentation}/lib/src/
mini_front/packages/composition/base_providers/lib/src/start_providers.dart  ← add your bindProviders() to campOverrides()
mini_front/packages/composition/base_router/lib/src/router/app_router.dart   ← register your route
```

If `mini_front` ships the package generator, use it to scaffold the three layers; otherwise copy the
`cabins` structure and rename.

## 🛠️ Build & verify

```bash
cd mini_front
dart run build_runner build --delete-conflicting-outputs
flutter test
flutter run
```

<details>
<summary>🔦 Stuck at the campfire? (hint)</summary>

Don't invent anything new — every single piece you need already exists in `cabins`. Build one layer
at a time, regenerate, and run often. Get the entity + repo interface compiling first, then data +
`bindProviders`, then the screen + route, then tests. Small steps, frequent runs.
</details>

---

> ### 🏕️ Camp Rule of the Day — You're a counselor now 🎓
> You've internalized the whole flow: features declare needs, composition provides them, data hides
> behind interfaces, logic sits in tested providers, navigation is intent-driven, and state is
> immutable. That's not "challenge code" — that's how the **real project** is built. Welcome to the
> team, counselor. 🏕️🔥
