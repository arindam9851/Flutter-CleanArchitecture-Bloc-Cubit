import '../remote/dto/coin_dto.dart';
import '../../domain/model/coin_domain_model.dart';

/// Maps raw API response (DTO) → clean Domain model
/// Android equivalent: CoinMapper.kt
///
/// Why separate? DTO can change with API changes,
/// domain model stays clean and stable
class CoinMapper {
  /// Map single DTO → Domain
  static CoinDomainModel toDomain(CoinDto dto) {
    return CoinDomainModel(
      id: dto.id,
      name: dto.name,
      symbol: dto.symbol,
      rank: dto.rank,
      isActive: dto.isActive,
      type: dto.type,
    );
  }

  /// Map list of DTOs → list of Domain models
  static List<CoinDomainModel> toDomainList(List<CoinDto> dtos) {
    return dtos.map((dto) => toDomain(dto)).toList();
  }
}