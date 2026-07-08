import 'package:freezed_annotation/freezed_annotation.dart';

part 'cabin.freezed.dart';

/// A camp cabin — the *app shape* of a cabin (an entity).
///
/// Note what is NOT here: no JSON, no `fromJson`. Entities are pure domain
/// objects. Serialization lives on the DTO in the data layer.
@freezed
abstract class Cabin with _$Cabin {
  const factory Cabin({
    required String description,
    required String id,
    required String name,
  }) = _Cabin;
}
