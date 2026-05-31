import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecase/get_coins_usecase.dart';
import 'coin_event.dart';
import 'coin_state.dart';


/// Bloc = MVI ViewModel equivalent
/// Android equivalent: CoinViewModel with Intent handling
///
/// UI sends Events (Intents), Bloc processes them
/// context.read<CoinBloc>().add(CoinEvent.fetchCoins())
/// = viewModel.onIntent(CoinIntent.FetchCoins)
@injectable
class CoinBloc extends Bloc<CoinEvent, CoinState> {
  final GetCoinsUseCase _getCoinsUseCase;

  CoinBloc(this._getCoinsUseCase) : super(const CoinState.initial()) {
    /// Register event handlers
    /// Android equivalent: when(is CoinIntent.FetchCoins) { ... }
    on<FetchCoins>(_onFetchCoins);
    on<Refresh>(_onRefresh);
    on<Search>(_onSearch);
  }

  /// Handles FetchCoins event
  Future<void> _onFetchCoins(
      FetchCoins event,
      Emitter<CoinState> emit,
      ) async {
    emit(const CoinState.loading());
    try {
      final coins = await _getCoinsUseCase();
      emit(CoinState.loaded(coins));
    } catch (e) {
      emit(CoinState.error(e.toString()));
    }
  }

  /// Handles Refresh event — same as fetch but could add pull-to-refresh logic
  Future<void> _onRefresh(
      Refresh event,
      Emitter<CoinState> emit,
      ) async {
    emit(const CoinState.loading());
    try {
      final coins = await _getCoinsUseCase();
      emit(CoinState.loaded(coins));
    } catch (e) {
      emit(CoinState.error(e.toString()));
    }
  }

  /// Handles Search event — filters coins by name or symbol
  Future<void> _onSearch(
      Search event,
      Emitter<CoinState> emit,
      ) async {
    final currentState = state;
    if (currentState is CoinLoaded) {
      final filtered = currentState.coins
          .where((coin) =>
      coin.name.toLowerCase().contains(event.query.toLowerCase()) ||
          coin.symbol.toLowerCase().contains(event.query.toLowerCase()))
          .toList();
      emit(CoinState.loaded(filtered));
    }
  }
}