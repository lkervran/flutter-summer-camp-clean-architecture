# 🔧 Day 25 — Rig the Supply Line (bindProviders)

Time for the move that makes the whole architecture click: **dependency injection via
`bindProviders`**. The cabins data layer needs a new piece of config from the app — and you'll thread
it in the way every feature gets its dependencies.

## 🎯 Your adventure

The cabins HTTP data source currently has a hardcoded base URL (or is missing one). Make it come from
the app's configuration instead:

1. **Domain/data DI:** add a provider that *declares the need* for a `baseUrl` (a provider that
   throws by default — the "I need this from outside" contract).
2. **`bindProviders()`:** extend the cabins data layer's `bindProviders({ required ... })` signature
   to accept a `ProviderListenable<String> baseUrlProvider`, and add the matching
   `di.baseUrlProvider.overrideWith((ref) => ref.watch(baseUrlProvider))`.
3. **Composition:** at the call site, pass the app's config in —
   `baseUrlProvider: appConfigurationProvider.select((c) => c.cabinsBaseUrl)`.
4. Confirm the data source now reads the injected URL and the app still loads cabins.

This is *the* pattern: features declare what they need; composition supplies it. Nail it today and
Week 4 gets a lot easier.

## 🏅 Earn your badge when

- The base URL is declared as a DI provider, fulfilled inside `bindProviders()`, and passed from
  composition via `.select(...)`.
- The data source uses the injected value, and the app still works.

## 📍 Where to dig

```
mini_front/packages/features/cabins/data/lib/src/providers.dart       ← bindProviders()
mini_front/packages/features/cabins/data/lib/src/providers_di.*       ← the throwing declarations
mini_front/packages/composition/base_providers/lib/src/start_providers.dart  ← the bindProviders() call site (campOverrides)
```

<details>
<summary>🔦 Stuck at the campfire? (hint)</summary>

Find another feature (or another field) that's already injected this way and copy the shape exactly.
The signature uses `ProviderListenable<T>` so composition can pass a `.select(...)`. Inside
`bindProviders`, each parameter becomes an `.overrideWith((ref) => ref.watch(param))`.
</details>

---

> ### 🏕️ Camp Rule of the Day — Features declare, composition provides
> A feature never reaches out and grabs global config — it **declares a need** (a throwing provider)
> and trusts the composition layer to **fulfill** it via `bindProviders`. This keeps features
> isolated, testable, and reusable across apps. It's the spine of the whole project. 🦴
