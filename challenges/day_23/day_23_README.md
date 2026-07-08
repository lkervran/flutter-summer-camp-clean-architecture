# 🎒 Day 23 — Pack a New Field

Your first real ticket! 🎟️ Product wants each cabin to show its **capacity** (how many campers it
sleeps). The data's already in the API response — we just don't carry it through yet.

This is the bread-and-butter change you'll make a hundred times: thread a new field across the layers.

## 🎯 Your adventure

Add a `capacity` field to the **cabins** feature, all the way through:

1. **Data layer — DTO:** add the new field to the `CabinDto` (the wire shape), matching the JSON key.
2. **Domain layer — entity:** add the field to the `Cabin` entity (the app shape).
3. **Mapper:** update the DTO → entity mapping so the value flows through.
4. **UI:** surface the capacity on the cabins screen (e.g. "Sleeps 6").
5. Regenerate code and run.

Keep the DTO and entity **separate** — that wire-shape-vs-app-shape instinct from Day 12 is now a
hard architectural boundary.

## 🏅 Earn your badge when

- The field exists on both the DTO and the entity, and the mapper carries it across.
- The capacity shows up correctly on screen, sourced from the parsed data.
- Code generation passes and the app runs.

## 📍 Where to dig

```
mini_front/packages/features/cabins/data/lib/src/dtos/          ← CabinDto
mini_front/packages/features/cabins/domain/lib/src/entities/    ← Cabin
mini_front/packages/features/cabins/data/lib/src/repositories/  ← the mapper
```

## 🛠️ Code generation

```bash
cd mini_front
dart run build_runner build --delete-conflicting-outputs
```

<details>
<summary>🔦 Stuck at the campfire? (hint)</summary>

The DTO is `@JsonSerializable`/Freezed — add the field, mind the `@JsonKey` if the JSON name differs,
then regenerate. The entity is a plain Freezed model. The mapper is wherever the repo turns a `Dto`
into an entity; you'll add `capacity: dto.capacity` there.
</details>

---

> ### 🏕️ Camp Rule of the Day — DTO ≠ entity, on purpose
> The DTO mirrors the backend; the entity serves the app. Keeping them separate means a backend rename
> doesn't ripple through your whole UI — you only fix the mapper. One boundary, lots of saved pain. 🧱
