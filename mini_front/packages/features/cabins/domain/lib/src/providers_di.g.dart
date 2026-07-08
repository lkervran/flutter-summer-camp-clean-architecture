// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers_di.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// The cabins feature *declares* that it needs a [CabinsRepository], but it does
/// not build one. By default this throws — the data layer fulfils it inside
/// `bindProviders()`, and the composition layer applies those overrides.
///
/// This "throw-to-override" pattern is how every feature gets its dependencies
/// without depending on a concrete implementation.

@ProviderFor(cabinsRepository)
final cabinsRepositoryProvider = CabinsRepositoryProvider._();

/// The cabins feature *declares* that it needs a [CabinsRepository], but it does
/// not build one. By default this throws — the data layer fulfils it inside
/// `bindProviders()`, and the composition layer applies those overrides.
///
/// This "throw-to-override" pattern is how every feature gets its dependencies
/// without depending on a concrete implementation.

final class CabinsRepositoryProvider
    extends
        $FunctionalProvider<
          CabinsRepository,
          CabinsRepository,
          CabinsRepository
        >
    with $Provider<CabinsRepository> {
  /// The cabins feature *declares* that it needs a [CabinsRepository], but it does
  /// not build one. By default this throws — the data layer fulfils it inside
  /// `bindProviders()`, and the composition layer applies those overrides.
  ///
  /// This "throw-to-override" pattern is how every feature gets its dependencies
  /// without depending on a concrete implementation.
  CabinsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cabinsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cabinsRepositoryHash();

  @$internal
  @override
  $ProviderElement<CabinsRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CabinsRepository create(Ref ref) {
    return cabinsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CabinsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CabinsRepository>(value),
    );
  }
}

String _$cabinsRepositoryHash() => r'cbfab5cafd8d2e9ce76d5669af2ff10b397f046a';
