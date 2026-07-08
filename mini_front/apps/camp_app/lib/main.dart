import 'package:base_application/base_application.dart';
import 'package:base_providers/base_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The composition root — a thin entrypoint.
///
/// The actual composition lives in the `packages/composition/base_*` packages:
/// `base_providers` (the overrides + config), `base_router` (the route tree), and
/// `base_application` (the root widget). `main` just spreads the overrides into a
/// `ProviderScope` and runs the app.
void main() => runApp(
  ProviderScope(
    overrides: campOverrides(),
    child: const CampApp(),
  ),
);
