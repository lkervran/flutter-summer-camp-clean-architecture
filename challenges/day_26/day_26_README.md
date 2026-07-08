# 🧭 Day 26 — Blaze a New Route

Tapping a cabin should open a **Cabin Detail** screen — but right now there's nowhere to go. Today
you'll add a brand-new screen and **plug it into the existing router tree**. You met `auto_route` way
back on Day 8; now you're doing it inside a real layered feature.

## 🎯 Your adventure

Add a Cabin Detail screen to the cabins feature:

1. **Screen:** create a `CabinDetailScreen` (`ConsumerWidget`) that displays a single cabin's info.
   It should get the cabin (or its id) passed in.
2. **Route:** declare it with `@RoutePage` in the feature presentation, regenerate routes, then
   register it in the app's route tree — `AppRouter` in `composition/base_router` — so it's reachable.
3. **Navigate:** from the cabins list, tapping a cabin pushes the generated detail route with the
   right argument.
4. **Export:** make sure the new page/route is exported so the app can see it.

## 🏅 Earn your badge when

- A new `@RoutePage` detail screen exists and is registered in the router.
- Tapping a cabin navigates to it with the correct argument, and back works.
- Code generation passes and the app runs.

## 📍 Where to dig

```
mini_front/packages/features/cabins/presentation/lib/src/                 ← screens
mini_front/packages/features/cabins/presentation/lib/src/routing/         ← *_router with @RoutePage
mini_front/packages/features/cabins/presentation/lib/cabins_presentation.dart  ← barrel/exports
mini_front/packages/composition/base_router/lib/src/router/app_router.dart ← register the route in the app tree
```

## 🛠️ Code generation

```bash
cd mini_front
dart run build_runner build --delete-conflicting-outputs
```

<details>
<summary>🔦 Stuck at the campfire? (hint)</summary>

Copy the shape of the existing cabins route. Annotate your page `@RoutePage(name: 'CabinDetailRoute')`,
give its constructor the argument it needs, regenerate the `.gr.dart`, add it to the router's route
list, then navigate with the generated `CabinDetailRoute(cabin: ...)`.
</details>

---

> ### 🏕️ Camp Rule of the Day — Routes are typed, arguments are explicit
> We don't pass loosely-typed bundles between screens. A route is a generated, typed class with named
> arguments — the compiler checks you passed the right things. If a screen needs a cabin, its route
> takes a `Cabin`. 🧷
