import 'package:cabins_data/src/providers_internal.dart';
import 'package:cabins_domain/cabins_domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/// The data layer's public surface: fulfil the domain's contracts.
///
/// The composition layer spreads this into its `ProviderScope` overrides. Here
/// we say "when something needs a [CabinsRepository], give them our real
/// implementation" — the throwing stub in the domain gets replaced.
List<Override> bindProviders() => [
  cabinsRepositoryProvider.overrideWith(
    (ref) => ref.watch(cabinsSingleSourceRepositoryProvider),
  ),
];
