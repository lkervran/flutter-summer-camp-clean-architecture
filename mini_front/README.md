# 🏔️ mini_front — Base Camp for Week 4

Welcome to the Expedition zone, camper. This is **`mini_front`**: a small, runnable mirror of how
the real project is structured. It's deliberately tiny — one feature, one screen — but it uses the
*exact same patterns* you'll meet on the job: clean-architecture layers, throw-to-override DI,
`bindProviders`, and `auto_route` composition.

Week 4's challenges (Days 22–30) all happen **in here**. Read this map before Day 22.

## 🗺️ The layout

It's a [Dart **pub workspace**](https://dart.dev/tools/pub/workspaces) — one `flutter pub get` at the
root resolves every package together. (The real project uses Melos for the same job; same idea,
heavier tooling.)

```
mini_front/
├── pubspec.yaml                      # workspace root — lists all packages
├── analysis_options.yaml             # shared Camp Rules (lints) for every package
├── apps/
│   └── camp_app/
│       └── lib/main.dart             # thin entrypoint: ProviderScope(campOverrides()) + CampApp
└── packages/
    ├── composition/                  # the COMPOSITION layer (like the real project's packages/composition)
    │   ├── base_router/              # AppRouter — composes every feature's routes
    │   ├── base_providers/          # app config + campOverrides() (the bindProviders assembly)
    │   └── base_application/        # CampApp — the root MaterialApp.router widget
    ├── features/
    │   └── cabins/                   # ONE feature, split into three layers
    │       ├── domain/               # entities, repository INTERFACE, provider contracts
    │       ├── data/                 # DTOs, data sources, repository IMPL, bindProviders()
    │       └── presentation/         # screen, routing (@RoutePage)
    └── utilities/
        └── givn/                     # vendored Given/When/Then test framework (Day 28)
```

> The composition layer is split into `base_*` packages exactly like flutter-front
> (`packages/composition/base_router`, `base_providers`, `base_application`) — the app itself is just
> a thin entrypoint.

## 🧭 How a feature is wired (read this twice)

The golden rule: **features declare what they need; the composition layer provides it.**

```
                 domain                         data                    composition (base_providers)
        ┌───────────────────────┐    ┌────────────────────────┐    ┌──────────────────────────┐
        │ cabinsRepositoryProvider│   │ bindProviders() returns │    │ campOverrides() spreads   │
        │   → THROWS by default   │◀──│  an override that points│◀───│  ...cabins_data            │
        │ (UnregisteredProvider…) │   │  it at the real impl    │    │     .bindProviders();      │
        └───────────┬─────────────┘   └────────────────────────┘    │  main.dart → ProviderScope │
                    │                                                └──────────────────────────┘
        ┌───────────▼─────────────┐
        │ cabinsProvider (use case)│  ← what the screen watches; calls the repository interface
        └───────────┬─────────────┘
                    │
        ┌───────────▼─────────────┐
        │ CabinsScreen (watches it)│  ← no logic, just renders the AsyncValue
        └──────────────────────────┘
```

1. **domain/** declares `cabinsRepositoryProvider`, which **throws** `UnregisteredProviderException`
   until someone overrides it. It also exposes `cabinsProvider` (the use case the UI watches).
2. **data/** implements the repository (`CabinsSingleSourceRepository`, fed by a `FakeCabinsDataSource`)
   and its `bindProviders()` returns the override that fulfils the domain's contract.
3. **composition/** — `base_providers` exposes `campOverrides()` (which spreads each feature's
   `bindProviders()`); `base_router` composes the routes; `base_application` builds the app widget.
   `apps/camp_app/lib/main.dart` is a thin entrypoint that spreads `campOverrides()` into the root
   `ProviderScope`. Break that (drop a feature's `bindProviders()` from `campOverrides`) and the app
   throws at runtime — that's exactly Day 29's bug.

## ▶️ Running & generating

The toolchain is pinned with **mise** (the repo-root `mise.toml`, matching the real project). Once
you've run `mise install` at the camp root, `flutter`/`dart` are on your PATH — no prefix needed.

From the `mini_front/` root:

```bash
flutter pub get                                          # resolve the whole workspace at once
flutter run                                              # run the app (from apps/camp_app)
```

Code generation runs **per package** (the package that owns the annotated files):

```bash
cd packages/features/cabins/data
dart run build_runner build --delete-conflicting-outputs
```

Generated files (`*.g.dart`, `*.freezed.dart`, `*.gr.dart`) are **committed** so the repo runs on
clone — just like the real project.

Tests live in each package's `test/` folder:

```bash
cd apps/camp_app && flutter test
```

## 🎒 Your Week 4 trail (where each day happens)

| Day | What you'll touch |
|-----|-------------------|
| 22 | Read only — trace `cabins` through the three layers and find the throw→override seam |
| 23 | `cabins/data/.../dtos/cabin_dto.dart`, `cabins/domain/.../entities/cabin.dart` + the mapper |
| 24 | `cabins/domain/.../providers.dart`, `cabins/presentation/.../cabins_screen.dart` |
| 25 | `cabins/data/.../providers.dart` (`bindProviders`) + `composition/base_providers/` |
| 26 | `cabins/presentation/.../routing/` + `composition/base_router/.../app_router.dart` |
| 27 | `cabins/domain/.../routing/` (new interface) + presentation impl + `composition/` |
| 28 | `cabins/.../test/` — mock the repository, override the provider, assert state (`givn`) |
| 29 | `composition/base_providers/` (+ `apps/camp_app/lib/main.dart`) — fix the broken wiring |
| 30 | A whole new feature package, mirroring `cabins/` end to end |

> 💡 Every task this week starts the same way: **find how `cabins` already does the similar thing,
> then copy the pattern.** You're never inventing — you're following the trail. 🥾
