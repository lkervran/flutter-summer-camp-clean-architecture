import 'package:cabins_data/src/dtos/cabin_dto.dart';

/// Where cabin data comes from. The repository talks to this interface, so we
/// can swap an HTTP source for a fake one (like the one below) without the rest
/// of the app noticing.
abstract interface class CabinsDataSource {
  Future<List<CabinDto>> fetchCabins();
}

/// A fake source so the camp runs offline. It pretends to call
/// `https://.../$region/cabins` after a short delay, then returns sample data.
///
/// The [region] is hardcoded for now — Day 25 is all about injecting it from the
/// app's configuration instead.
class FakeCabinsDataSource implements CabinsDataSource {
  const FakeCabinsDataSource({required this.region});

  final String region;

  @override
  Future<List<CabinDto>> fetchCabins() async {
    await Future<void>.delayed(const Duration(milliseconds: 400));
    return [
      CabinDto(
        id: 'eagle',
        name: "Eagle's Nest",
        description: 'Hilltop cabin with the best sunrise in the $region camp.',
      ),
      const CabinDto(
        id: 'otter',
        name: 'Otter Lodge',
        description: 'Lakeside cabin, two canoes included.',
      ),
      const CabinDto(
        id: 'fox',
        name: 'Fox Den',
        description: 'Cozy cabin tucked into the pines.',
      ),
      const CabinDto(
        id: 'bear',
        name: 'Bear Cave',
        description: 'The biggest cabin — sleeps the whole troop.',
      ),
    ];
  }
}
