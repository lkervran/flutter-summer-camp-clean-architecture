# 🥾 Day 24 — New Trail (Use Case / Provider)

The cabins list is static once loaded — campers want a **Refresh** button to pull the latest. Today
you'll add a new piece of behavior to an existing feature, the project way: a provider that does one
job and leans on the repository.

## 🎯 Your adventure

Add a **refresh** capability to the cabins feature:

1. In the feature, add a `@riverpod` provider (or a method on the existing notifier) that re-fetches
   the cabins via the **repository interface** — never by calling an HTTP client directly.
2. Wire a **Refresh** action in the cabins screen that triggers it (and invalidates/reloads the list).
3. Make sure loading and error states still render correctly through `AsyncValue`.

Bonus trail: add a second small provider that *derives* something from the cabins — e.g. a
"total beds across all cabins" value computed by watching the cabins provider.

## 🏅 Earn your badge when

- A new provider/method drives a refresh through the repository, not the data source directly.
- The screen can trigger it and shows the refreshed list with proper loading/error handling.

## 📍 Where to dig

```
mini_front/packages/features/cabins/domain/lib/src/          ← repository interface + providers
mini_front/packages/features/cabins/presentation/lib/src/    ← the screen + its provider file
```

<details>
<summary>🔦 Stuck at the campfire? (hint)</summary>

Find how the screen currently gets cabins, and follow it to the repository interface. Your new
provider should `ref.read`/`ref.watch` that repository and call its fetch method. To force a reload,
`ref.invalidate` the provider feeding the list. A derived value is just another `@riverpod` function
that watches the first.
</details>

---

> ### 🏕️ Camp Rule of the Day — Depend on interfaces, not implementations
> Your refresh logic talks to the **`CabinsRepository` interface**, not to an HTTP client. The
> presentation/domain layers don't know (or care) whether data comes from the network, a cache, or a
> mock in a test. That ignorance is the whole point of the architecture. 🔌
