# 🏕️ Flutter Summer Camp — Week 4: Expedition 🏔️

You've made it to the summit week! ☀️

This is **Week 4** of Flutter Summer Camp — a 30-day Flutter coding challenge. This repo covers the
**Expedition** week: real project practices — clean architecture, dependency injection, routing, and
testing with **`givn`** (Given/When/Then). This is onboarding, for real.

> New here? Week 4 assumes the earlier weeks: Flutter fundamentals, async/data, and Riverpod state
> management (codegen, Freezed, `AsyncValue`). It moves fast and leans on all of it.

## 🗺️ This week

| Theme | What you'll learn |
|-------|-------------------|
| **Expedition** | Clean architecture, DI, routing, testing with `givn` — onboarding for real |

> Unlike weeks 1–3, these days don't ship standalone day apps. They all run against the provided
> **`mini_front/`** scaffold — a small mirror of how we structure the real app. Each day changes the
> **same** codebase, building on the last. **Read [`mini_front/README.md`](mini_front/README.md)
> before Day 22.**

Full day-by-day list: **[challenges/README.md](challenges/README.md)** (days 22–30).

## 🎒 What to pack (setup)

You'll run everything **locally**. You need:

- **[mise](https://mise.jdx.dev/)** to pin the toolchain (same as the real project). The pinned
  Flutter version lives in `mise.toml`.
- An editor (VS Code or Android Studio)
- A device, simulator/emulator, or just Chrome

One-time, from the repo root, install the pinned toolchain:

```bash
mise install        # installs the Flutter version from mise.toml (Dart ships with it)
mise current        # check the active versions
```

After that, `flutter` and `dart` are on your PATH automatically — no prefix needed.

Run the scaffold from `mini_front/`:

```bash
cd mini_front
flutter pub get
flutter run            # or: flutter run -d chrome
```

> No mise? Install [Flutter 3.41.1](https://docs.flutter.dev/) yourself and use it directly.

Week 4 leans heavily on code generation. After any change that touches `@freezed`, `@riverpod`, or
`@RoutePage`, regenerate in the affected package:

```bash
cd packages/features/cabins/<layer>     # or apps/camp_app
dart run build_runner build --delete-conflicting-outputs
```

Generated sources (`*.g.dart`, `*.freezed.dart`, `*.gr.dart`) are intentionally committed so the
scaffold runs on clone — just like the real project.

## 🏅 How it works

1. Open the day's folder and read `day_XX_README.md`.
2. We tell you the **goal** and the **requirements** — not the step-by-step. Finding the existing
   pattern and following it *is* the skill this week. 🧭
3. Build it, run it, and check the **"Earn your badge when"** box.
4. Share a screenshot (or your repo) in the camp channel and collect your badge.

Stuck at the campfire? Most briefs have a collapsible **hint** — but try without it first.

## 📏 Camp rules

Every project ships with the same `analysis_options.yaml`, so the linter keeps you honest.
On top of that, each brief ends with a **🏕️ Camp Rule of the Day** — one good habit we use on the
real project.

Final push to the summit. 🏔️
