# 🏔️ Day 22 — Base Camp Tour

Welcome to the Expedition, camper! 🎒 This week you stop building toy apps and start working in a
**real-shaped codebase** — `mini_front/`, a small mirror of how we structure the actual project.

Before you touch anything, you need a map. Today is pure reconnaissance: no code changes, just
understanding how the pieces fit. (On a real team, this *is* your first day.)

## 🗺️ The lay of the land

`mini_front/` is a multi-package workspace. Each feature is split into three layers:

- **`domain/`** — the truth: entities, repository *interfaces*, and providers that describe what the
  feature needs (some of them deliberately *throw* until someone provides them).
- **`data/`** — the plumbing: DTOs, data sources (HTTP), repository *implementations*, and a
  `bindProviders()` that fulfills the domain's needs.
- **`presentation/`** — the face: screens, UI state, routing, theme.

The **composition layer** (the `packages/composition/base_*` packages) is where everything gets
wired together — `base_providers` assembles the overrides, `base_router` the routes, `base_application`
the app widget; `apps/camp_app` is just a thin entrypoint.

## 🎯 Your adventure

Pick the **`cabins`** feature in `mini_front/` and trace it end to end. Produce a short written
**trail report** (a markdown file or channel post) answering:

1. Where is the `Cabin` entity defined, and where is the `CabinsRepository` *interface*?
2. In `domain/`, find a provider that **throws** by default (an `UnregisteredProviderException` or
   similar). What is it, and why does it throw?
3. Where does that thrown provider get **fulfilled**? Follow `bindProviders()` from `data/` and find
   where the composition layer calls it.
4. How does the `CabinsScreen` get its data — what does it `watch`?
5. Run the app (`mini_front`) and confirm the cabins list shows up.

## 🏅 Earn your badge when

- Your trail report correctly traces a request from screen → provider → repository → data source.
- You can point to the exact spot where a throwing provider gets overridden.
- The app runs and shows the cabins.

## 📍 Where to dig

```
mini_front/packages/features/cabins/{domain,data,presentation}/lib/src/
mini_front/packages/composition/base_providers/     ← where bindProviders() are assembled (campOverrides)
mini_front/packages/composition/base_router/        ← the app's route tree
mini_front/apps/camp_app/lib/main.dart              ← the thin entrypoint
```

<details>
<summary>🔦 Stuck at the campfire? (hint)</summary>

Start from the screen and work *backwards*: what provider does it watch? Jump to that provider's
definition. If it's an interface that throws, search the codebase for `.overrideWith` on it — that
search lands you in `bindProviders()`, and the call site of `bindProviders()` is in composition.
</details>

---

> ### 🏕️ Camp Rule of the Day — Read before you write
> The fastest way to break a big codebase is to add code before you understand the patterns already
> there. Follow the existing trail first. Every task this week starts with "find the example that
> already does something similar." 🧭
