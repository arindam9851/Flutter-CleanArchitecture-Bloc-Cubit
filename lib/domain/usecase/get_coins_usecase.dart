import 'package:injectable/injectable.dart';
import '../model/coin_domain_model.dart';
import '../repository/coin_repository.dart';


/// Use Case — single responsibility: get coins
/// Android equivalent: CoinUseCase.kt
///
/// Why UseCase? Keeps business logic OUT of ViewModel/Cubit/Bloc
/// ViewModel should only handle UI state, not business rules
///
/// Usage:
///   final coins = await getCoinsUseCase();
@injectable
class GetCoinsUseCase {
  final CoinRepository _repository;

  GetCoinsUseCase(this._repository);

  /// Invoke like a function: getCoinsUseCase()
  Future<List<CoinDomainModel>> call() async {
    return await _repository.getCoins();
  }
}