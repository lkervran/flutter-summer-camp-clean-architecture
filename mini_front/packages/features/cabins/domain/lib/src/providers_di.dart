import 'package:cabins_domain/src/repositories/cabins_repository.dart';
import 'package:cabins_domain/src/unregistered_provider_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers_di.g.dart';

/// The cabins feature *declares* that it needs a [CabinsRepository], but it does
/// not build one. By default this throws — the data layer fulfils it inside
/// `bindProviders()`, and the composition layer applies those overrides.
///
/// This "throw-to-override" pattern is how every feature gets its dependencies
/// without depending on a concrete implementation.
@riverpod
CabinsRepository cabinsRepository(Ref ref) => throw const UnregisteredProviderException('cabinsRepositoryProvider');
