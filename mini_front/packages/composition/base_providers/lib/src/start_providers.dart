import 'package:cabins_data/cabins_data.dart' as cabins_data;
import 'package:riverpod_annotation/riverpod_annotation.dart';

/// The composition root's provider overrides.
///
/// Each feature's `bindProviders()` returns the overrides that fulfil its domain
/// contracts; here we spread them all into a single list the app hands to its
/// `ProviderScope`. Add a feature → spread its `bindProviders()` here.
List<Override> campOverrides() => [
      ...cabins_data.bindProviders(),
    ];
