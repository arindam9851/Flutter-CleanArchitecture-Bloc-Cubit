import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_event.freezed.dart';

/// Events = Intents in MVI
/// Android equivalent: CoinIntent.kt sealed class
///
/// Every user action becomes an Event
/// UI never calls functions directly — it sends Events
@freezed
class CoinEvent with _$CoinEvent {
  /// User wants to load coins
  /// Android equivalent: CoinIntent.FetchCoins
  const factory CoinEvent.fetchCoins() = FetchCoins;

  /// User wants to refresh the list
  /// Android equivalent: CoinIntent.Refresh
  const factory CoinEvent.refresh() = Refresh;

  /// User searched for a coin
  /// Android equivalent: CoinIntent.Search(query)
  const factory CoinEvent.search(String query) = Search;
}