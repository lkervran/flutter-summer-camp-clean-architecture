import 'package:cabins_domain/cabins_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cabin_dto.freezed.dart';
part 'cabin_dto.g.dart';

/// The *wire shape* of a cabin: exactly what the backend sends.
///
/// It knows how to deserialize itself (`fromJson`) and how to become the domain
/// [Cabin] entity (`toEntity`). Keeping this separate from the entity means a
/// backend change only touches this file + the mapper, never the whole app.
@freezed
abstract class CabinDto with _$CabinDto {
  const factory CabinDto({
    required String description,
    required String id,
    required String name,
  }) = _CabinDto;

  const CabinDto._();

  factory CabinDto.fromJson(Map<String, dynamic> json) =>
      _$CabinDtoFromJson(json);

  Cabin toEntity() => Cabin(description: description, id: id, name: name);
}
