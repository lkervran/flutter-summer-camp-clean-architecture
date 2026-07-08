// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers_internal.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Internal DI wiring for the data layer. These are NOT exported from the
/// package barrel — only `bindProviders()` is public.

@ProviderFor(cabinsDataSource)
final cabinsDataSourceProvider = CabinsDataSourceProvider._();

/// Internal DI wiring for the data layer. These are NOT exported from the
/// package barrel — only `bindProviders()` is public.

final class CabinsDataSourceProvider
    extends
        $FunctionalProvider<
          CabinsDataSource,
          CabinsDataSource,
          CabinsDataSource
        >
    with $Provider<CabinsDataSource> {
  /// Internal DI wiring for the data layer. These are NOT exported from the
  /// package barrel — only `bindProviders()` is public.
  CabinsDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cabinsDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cabinsDataSourceHash();

  @$internal
  @override
  $ProviderElement<CabinsDataSource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CabinsDataSource create(Ref ref) {
    return cabinsDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CabinsDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CabinsDataSource>(value),
    );
  }
}

String _$cabinsDataSourceHash() => r'5bc72027beadaf98c818d96e8e0b409d862cf2e9';

@ProviderFor(cabinsSingleSourceRepository)
final cabinsSingleSourceRepositoryProvider =
    CabinsSingleSourceRepositoryProvider._();

final class CabinsSingleSourceRepositoryProvider
    extends
        $FunctionalProvider<
          CabinsRepository,
          CabinsRepository,
          CabinsRepository
        >
    with $Provider<CabinsRepository> {
  CabinsSingleSourceRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cabinsSingleSourceRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cabinsSingleSourceRepositoryHash();

  @$internal
  @override
  $ProviderElement<CabinsRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CabinsRepository create(Ref ref) {
    return cabinsSingleSourceRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CabinsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CabinsRepository>(value),
    );
  }
}

String _$cabinsSingleSourceRepositoryHash() =>
    r'7f6e986bc43508e7db20599faff1eb679a844a2a';
