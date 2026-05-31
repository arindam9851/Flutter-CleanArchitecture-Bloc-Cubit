import 'package:injectable/injectable.dart';
import '../remote/api/coin_api.dart';
import '../mapper/coin_mapper.dart';
import '../../domain/model/coin_domain_model.dart';
import '../../domain/repository/coin_repository.dart';

/// Concrete implementation of CoinRepository (Data Layer)
/// Android equivalent: CoinRepositoryImpl.kt
///
/// Domain layer depends on the INTERFACE (CoinRepository)
/// not this implementation — that's Dependency Inversion!
///
/// @LazySingleton(as: CoinRepository) tells get_it:
///   "When someone asks for CoinRepository, give them THIS"
@LazySingleton(as: CoinRepository)
class CoinRepositoryImpl implements CoinRepository {
  final CoinApi _api;

  CoinRepositoryImpl(this._api);

  @override
  Future<List<CoinDomainModel>> getCoins() async {
    try {
      final dtos = await _api.getCoins();
      return CoinMapper.toDomainList(dtos); // DTO → Domain
    } catch (e) {
      throw Exception('Failed to fetch coins: $e');
    }
  }
}