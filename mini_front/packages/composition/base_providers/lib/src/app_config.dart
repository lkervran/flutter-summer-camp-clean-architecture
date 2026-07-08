import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_config.g.dart';

/// App-wide configuration assembled at the composition layer.
///
/// Features don't read this directly — the composition layer reads slices of it
/// and passes them into each feature's `bindProviders(...)`. (Day 25 wires the
/// [region] into the cabins data layer this way.)
class AppConfig {
  const AppConfig({required this.campTitle, required this.region});

  final String campTitle;
  final String region;
}

@riverpod
AppConfig appConfig(Ref ref) => const AppConfig(
  campTitle: 'Flutter Summer Camp',
  region: 'summer-2026',
);
