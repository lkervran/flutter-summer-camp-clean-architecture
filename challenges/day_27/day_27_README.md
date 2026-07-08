# 🪧 Day 27 — Trail Signs (Routing Interface)

Yesterday the cabins screen navigated by calling `auto_route` directly. On the real project, features
**don't know how to navigate** — they just announce *what happened* ("a cabin was tapped") and let the
app decide where to go. Today you'll build that decoupling with a **routing interface**.

## 🎯 Your adventure

Refactor the cabins feature to use event-driven navigation:

1. **Domain — interface:** define a `CabinsRouting` interface with intent-named methods like
   `onCabinTapped(Cabin cabin)`, `onBackRequested()` — *what happened*, not *where to go*.
2. **DI:** declare a provider for `CabinsRouting` that throws by default (the feature needs it but
   doesn't implement it).
3. **Presentation/app — implementation:** implement `CabinsRouting` where the real navigation lives
   (the implementation calls `auto_route` to push the detail route, pop, etc.).
4. **Compose:** override the routing provider in composition with the real implementation.
5. **Use it:** the cabins screen now calls `ref.read(cabinsRoutingProvider).onCabinTapped(cabin)` —
   no `auto_route` import in the feature's screen at all.

## 🏅 Earn your badge when

- A `CabinsRouting` interface with intent-named methods exists in the feature.
- The feature screen triggers navigation **only** through that interface (no direct router calls).
- The real implementation is wired in via composition, and navigation still works.

## 📍 Where to dig

```
mini_front/packages/features/cabins/domain/lib/src/routing/        ← the interface + DI provider
mini_front/packages/features/cabins/presentation/lib/src/routing/  ← the implementation
mini_front/packages/composition/base_application/                  ← override the routing provider (router is available here)
```

<details>
<summary>🔦 Stuck at the campfire? (hint)</summary>

Look at how the `CabinsRepository` is declared-then-overridden — routing follows the *exact same*
throw-to-override pattern, just for navigation behavior instead of data. The implementation holds a
`BuildContext`/router and turns `onCabinTapped` into a real route push.
</details>

---

> ### 🏕️ Camp Rule of the Day — Features announce intent, apps decide routes
> A feature shouldn't know it lives next to a "detail screen" — that's the app's business. Features
> fire **intents** (`onCabinTapped`); the composition layer wires those to real destinations. Swap the
> app, swap the navigation, feature untouched. 🪧
