import 'package:cabins_data/src/data_sources/cabins_data_source.dart';
import 'package:cabins_data/src/repositories/cabins_single_source_repository.dart';
import 'package:cabins_domain/cabins_domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers_internal.g.dart';

/// Internal DI wiring for the data layer. These are NOT exported from the
/// package barrel — only `bindProviders()` is public.

@riverpod
CabinsDataSource cabinsDataSource(Ref ref) => const FakeCabinsDataSource(region: 'base-camp');

@riverpod
CabinsRepository cabinsSingleSourceRepository(Ref ref) => CabinsSingleSourceRepository(
  dataSource: ref.watch(cabinsDataSourceProvider),
);
