import 'package:cabins_data/src/data_sources/cabins_data_source.dart';
import 'package:cabins_domain/cabins_domain.dart';

/// The data layer's implementation of the domain's [CabinsRepository].
///
/// Its whole job: get DTOs from the data source, map them to domain entities.
/// "Single source" because it reads from exactly one place (the data source).
class CabinsSingleSourceRepository implements CabinsRepository {
  const CabinsSingleSourceRepository({required this.dataSource});

  final CabinsDataSource dataSource;

  @override
  Future<List<Cabin>> fetchCabins() async {
    final dtos = await dataSource.fetchCabins();
    return dtos.map((dto) => dto.toEntity()).toList();
  }
}
