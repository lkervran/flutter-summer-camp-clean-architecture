# 🌲 Day 29 — Lost in the Woods (Debug DI)

Every camper hits it eventually: you run the app and — 💥 — `UnregisteredProviderException`. A
provider that was supposed to be fulfilled... wasn't. Today is the rite of passage: **find it and fix
it** without rewriting half the app.

## 🎯 Your adventure

The `mini_front` repo has a **`day_29` branch** (or a broken feature flagged in its README) where a
feature crashes at runtime with an `UnregisteredProviderException` (or shows blank/throws on load).
Your job is to diagnose and repair the DI wiring:

1. **Reproduce:** run it, read the exception, note *exactly which provider* is unregistered.
2. **Diagnose:** it's one of the classic three —
   - the feature's `bindProviders()` is never **imported/called** in `campOverrides()` (`base_providers`), or
   - it's called but a parameter **type doesn't match** (`ProviderListenable<T>` mismatch), or
   - the overrides list isn't **spread** (`...bindProviders()`) into `campOverrides()`.
3. **Fix** the wiring so the provider is properly fulfilled.
4. Write a one-paragraph **post-mortem**: what was broken, how you found it, how you fixed it.

## 🏅 Earn your badge when

- The app runs without the exception and the feature loads correctly.
- Your post-mortem correctly names the root cause (not just the symptom).

## 📍 Where to dig

```
mini_front/packages/composition/base_providers/lib/src/start_providers.dart  ← campOverrides() assembles & spreads bindProviders()
mini_front/packages/features/<broken>/                                       ← the declaring provider (providers_di.*)
```

<details>
<summary>🔦 Stuck at the campfire? (hint)</summary>

The exception names the provider — search the codebase for it. It's *declared* (throwing) in a
`providers_di` file; it should be *overridden* inside some `bindProviders()`. Check that this
`bindProviders()` is both **called** and **spread** in the composition's overrides list, and that the
provider passed in matches the expected type. The bug is almost never in the feature itself — it's in
the wiring.
</details>

---

> ### 🏕️ Camp Rule of the Day — Read the stack trace, then the wiring
> `UnregisteredProviderException` is not a scary bug — it's a precise one. It tells you the exact
> provider that nobody fulfilled. Resist the urge to "fix" the feature; follow the wiring from
> declaration → `bindProviders` → composition. The break is on that path. 🔍
