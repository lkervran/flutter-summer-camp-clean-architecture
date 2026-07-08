import 'package:cabins_domain/src/entities/cabin.dart';
import 'package:cabins_domain/src/providers_di.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

/// The feature's public read model: the list of cabins.
///
/// This is the "use case" the UI watches. It depends only on the repository
/// *interface* — it has no idea where the data actually comes from. Invalidate
/// this provider to refresh the list.
@riverpod
Future<List<Cabin>> cabins(Ref ref) =>
    ref.watch(cabinsRepositoryProvider).fetchCabins();
