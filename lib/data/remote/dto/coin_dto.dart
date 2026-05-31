import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_dto.freezed.dart';
part 'coin_dto.g.dart';


/// Raw API response model (Data Layer)
/// Maps directly to the JSON from CoinPaprika API
/// https://api.coinpaprika.com/v1/coins
@freezed
abstract class CoinDto with _$CoinDto {
  const factory CoinDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'symbol') required String symbol,
    @JsonKey(name: 'rank') required int rank,
    @JsonKey(name: 'is_new') @Default(false) bool isNew,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'type') @Default('') String type,
  }) = _CoinDto;

  factory CoinDto.fromJson(Map<String, dynamic> json) =>
      _$CoinDtoFromJson(json);
}