// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// The feature's public read model: the list of cabins.
///
/// This is the "use case" the UI watches. It depends only on the repository
/// *interface* — it has no idea where the data actually comes from. Invalidate
/// this provider to refresh the list.

@ProviderFor(cabins)
final cabinsProvider = CabinsProvider._();

/// The feature's public read model: the list of cabins.
///
/// This is the "use case" the UI watches. It depends only on the repository
/// *interface* — it has no idea where the data actually comes from. Invalidate
/// this provider to refresh the list.

final class CabinsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Cabin>>,
          List<Cabin>,
          FutureOr<List<Cabin>>
        >
    with $FutureModifier<List<Cabin>>, $FutureProvider<List<Cabin>> {
  /// The feature's public read model: the list of cabins.
  ///
  /// This is the "use case" the UI watches. It depends only on the repository
  /// *interface* — it has no idea where the data actually comes from. Invalidate
  /// this provider to refresh the list.
  CabinsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cabinsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cabinsHash();

  @$internal
  @override
  $FutureProviderElement<List<Cabin>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Cabin>> create(Ref ref) {
    return cabins(ref);
  }
}

String _$cabinsHash() => r'eddc90e9d1ce4b424486f6d0f69352352e7653ac';
