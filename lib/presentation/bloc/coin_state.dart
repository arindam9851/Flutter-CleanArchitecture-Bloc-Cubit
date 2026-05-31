import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/model/coin_domain_model.dart';

part 'coin_state.freezed.dart';

/// UI States for Bloc (MVI style)
/// Same concept as Cubit states but used with Events
@freezed
class CoinState with _$CoinState {
  const factory CoinState.initial() = CoinInitial;
  const factory CoinState.loading() = CoinLoading;
  const factory CoinState.loaded(List<CoinDomainModel> coins) = CoinLoaded;
  const factory CoinState.error(String message) = CoinError;
}

