/// Cabins feature — data layer (public API).
///
/// Only `bindProviders()` is public. DTOs, data sources, and repository
/// implementations stay internal — the rest of the app depends on the domain's
/// interfaces, never on these concrete types.
library;

export 'src/providers.dart';
