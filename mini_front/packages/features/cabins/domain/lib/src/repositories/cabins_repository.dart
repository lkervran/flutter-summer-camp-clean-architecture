import 'package:cabins_domain/src/entities/cabin.dart';

/// The domain's contract for fetching cabins.
///
/// This is an *interface* — the domain says "someone can give me cabins" without
/// caring whether they come from the network, a cache, or a fake in a test. The
/// real implementation lives in the data layer.
abstract interface class CabinsRepository {
  Future<List<Cabin>> fetchCabins();
}
