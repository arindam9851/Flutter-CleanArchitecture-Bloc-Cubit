
import '../model/coin_domain_model.dart';

abstract class CoinRepository {
  Future<List<CoinDomainModel>> getCoins();

}