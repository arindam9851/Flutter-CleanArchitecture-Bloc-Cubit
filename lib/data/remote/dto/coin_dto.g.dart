// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CoinDto _$CoinDtoFromJson(Map<String, dynamic> json) => _CoinDto(
  id: json['id'] as String,
  name: json['name'] as String,
  symbol: json['symbol'] as String,
  rank: (json['rank'] as num).toInt(),
  isNew: json['is_new'] as bool? ?? false,
  isActive: json['is_active'] as bool? ?? true,
  type: json['type'] as String? ?? '',
);

Map<String, dynamic> _$CoinDtoToJson(_CoinDto instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'symbol': instance.symbol,
  'rank': instance.rank,
  'is_new': instance.isNew,
  'is_active': instance.isActive,
  'type': instance.type,
};
