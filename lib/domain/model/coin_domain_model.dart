import 'package:freezed_annotation/freezed_annotation.dart';
part 'coin_domain_model.freezed.dart';

@freezed
abstract class CoinDomainModel with _$CoinDomainModel {
  const factory CoinDomainModel({
    required String id,
    required String name,
    required String symbol,
    required int rank,
    required bool isActive,
    required String type,
  }) = _CoinDomainModel;
}