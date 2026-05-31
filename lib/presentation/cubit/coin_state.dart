import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/model/coin_domain_model.dart';

part 'coin_state.freezed.dart';

/// UI States for Cubit (MVVM style)
/// Android equivalent: sealed class in ViewModel StateFlow
///
/// Freezed generates: copyWith, ==, toString, pattern matching
@freezed
class CoinState with _$CoinState {
  /// Initial state — nothing has happened yet
  const factory CoinState.initial() = CoinInitial;

  /// Loading state — API call in progress
  const factory CoinState.loading() = CoinLoading;

  /// Success state — coins loaded successfully
  const factory CoinState.loaded(List<CoinDomainModel> coins) = CoinLoaded;

  /// Error state — something went wrong
  const factory CoinState.error(String message) = CoinError;
}