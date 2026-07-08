import 'package:base_providers/base_providers.dart';
import 'package:base_router/base_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The root widget. Builds the composed router and hands it to `MaterialApp.router`.
class CampApp extends ConsumerStatefulWidget {
  const CampApp({super.key});

  @override
  ConsumerState<CampApp> createState() => _CampAppState();
}

class _CampAppState extends ConsumerState<CampApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    final title = ref.watch(appConfigProvider.select((config) => config.campTitle));
    return MaterialApp.router(title: title, routerConfig: _router.config());
  }
}
