import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecase/get_coins_usecase.dart';
import 'coin_state.dart';


/// Cubit = MVVM ViewModel equivalent
/// Android equivalent: CoinViewModel with StateFlow
///
/// UI calls functions directly (no Events/Intents)
/// viewModel.loadCoins() → context.read<CoinCubit>().fetchCoins()
@injectable
class CoinCubit extends Cubit<CoinState> {
  final GetCoinsUseCase _getCoinsUseCase;

  CoinCubit(this._getCoinsUseCase) : super(const CoinState.initial());

  /// Called directly from UI
  /// Android equivalent: viewModel.loadCoins()
  Future<void> fetchCoins() async {
    emit(const CoinState.loading());
    try {
      final coins = await _getCoinsUseCase();
      emit(CoinState.loaded(coins));
    } catch (e) {
      emit(CoinState.error(e.toString()));
    }
  }
}