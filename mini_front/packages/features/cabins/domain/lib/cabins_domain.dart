/// Cabins feature — domain layer (public API).
///
/// Exports the entity, the repository interface, and the provider contracts.
/// Internal `src/` files are reached through this barrel only.
library;

export 'src/entities/cabin.dart';
export 'src/providers.dart';
export 'src/providers_di.dart';
export 'src/repositories/cabins_repository.dart';
export 'src/unregistered_provider_exception.dart';
