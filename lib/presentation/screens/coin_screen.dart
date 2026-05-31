import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../di/injection.dart';
import '../../domain/model/coin_domain_model.dart';
import '../bloc/coin_bloc.dart';
import '../bloc/coin_event.dart';
import '../bloc/coin_state.dart' as bloc_state;
import '../cubit/coin_cubit.dart';
import '../cubit/coin_state.dart' as cubit_state;


/// Main screen demonstrating BOTH Cubit (MVVM) and Bloc (MVI)
/// Side by side in two tabs — just like your Android project
class CoinScreen extends StatelessWidget {
  const CoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFF0D0D0D),
        appBar: AppBar(
          backgroundColor: const Color(0xFF0D0D0D),
          title: const Text(
            '🪙 Coin App',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          bottom: const TabBar(
            indicatorColor: Color(0xFFFFC107),
            labelColor: Color(0xFFFFC107),
            unselectedLabelColor: Colors.white54,
            tabs: [
              Tab(text: 'Cubit (MVVM)'),
              Tab(text: 'Bloc (MVI)'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _CubitTab(),
            _BlocTab(),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────
// CUBIT TAB — MVVM Style
// UI calls functions directly on Cubit
// ─────────────────────────────────────────────
class _CubitTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      /// get_it provides CoinCubit with all dependencies injected
      create: (_) => getIt<CoinCubit>()..fetchCoins(),
      child: BlocBuilder<CoinCubit, cubit_state.CoinState>(
        builder: (context, state) {
          return state.when(
            initial: () => const _EmptyView(),
            loading: () => const _LoadingView(),
            loaded: (coins) => _CoinList(
              coins: coins,
              /// MVVM: UI calls function directly
              onRefresh: () => context.read<CoinCubit>().fetchCoins(),
            ),
            error: (message) => _ErrorView(
              message: message,
              onRetry: () => context.read<CoinCubit>().fetchCoins(),
            ),
          );
        },
      ),
    );
  }
}

// ─────────────────────────────────────────────
// BLOC TAB — MVI Style
// UI sends Events (Intents), never calls functions
// ─────────────────────────────────────────────
class _BlocTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      /// get_it provides CoinBloc with all dependencies injected
      create: (_) => getIt<CoinBloc>()
        ..add(const CoinEvent.fetchCoins()), // Send Event (Intent)
      child: Column(
        children: [
          _SearchBar(),
          Expanded(
            child: BlocBuilder<CoinBloc, bloc_state.CoinState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const _EmptyView(),
                  loading: () => const _LoadingView(),
                  loaded: (coins) => _CoinList(
                    coins: coins,
                    /// MVI: UI sends an Event (Intent), not a function call
                    onRefresh: () => context
                        .read<CoinBloc>()
                        .add(const CoinEvent.refresh()),
                  ),
                  error: (message) => _ErrorView(
                    message: message,
                    onRetry: () => context
                        .read<CoinBloc>()
                        .add(const CoinEvent.fetchCoins()),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────
// Search Bar (Bloc only — shows search Event)
// ─────────────────────────────────────────────
class _SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: 'Search coins...',
          hintStyle: const TextStyle(color: Colors.white38),
          prefixIcon: const Icon(Icons.search, color: Colors.white38),
          filled: true,
          fillColor: const Color(0xFF1A1A1A),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
        onChanged: (query) {
          /// MVI: send Search Event with query
          /// Android: viewModel.onIntent(CoinIntent.Search(query))
          context.read<CoinBloc>().add(CoinEvent.search(query));
        },
      ),
    );
  }
}

// ─────────────────────────────────────────────
// Shared UI Components
// ─────────────────────────────────────────────
class _CoinList extends StatelessWidget {
  final List<CoinDomainModel> coins;
  final VoidCallback onRefresh;

  const _CoinList({required this.coins, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => onRefresh(),
      color: const Color(0xFFFFC107),
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        itemCount: coins.length,
        itemBuilder: (context, index) => _CoinCard(coin: coins[index]),
      ),
    );
  }
}

class _CoinCard extends StatelessWidget {
  final CoinDomainModel coin;
  const _CoinCard({required this.coin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          // Rank badge
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFFFFC107).withOpacity(0.15),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                '#${coin.rank}',
                style: const TextStyle(
                  color: Color(0xFFFFC107),
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                ),
              ),
            ),
          ),
          const SizedBox(width: 14),
          // Coin info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coin.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  coin.symbol,
                  style: const TextStyle(color: Colors.white54, fontSize: 13),
                ),
              ],
            ),
          ),
          // Active badge
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: coin.isActive
                  ? Colors.green.withOpacity(0.15)
                  : Colors.red.withOpacity(0.15),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              coin.isActive ? 'Active' : 'Inactive',
              style: TextStyle(
                color: coin.isActive ? Colors.greenAccent : Colors.redAccent,
                fontSize: 11,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(color: Color(0xFFFFC107)),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;
  const _ErrorView({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, color: Colors.redAccent, size: 48),
          const SizedBox(height: 16),
          Text(message,
              style: const TextStyle(color: Colors.white54),
              textAlign: TextAlign.center),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: onRetry,
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFC107)),
            child: const Text('Retry', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No data', style: TextStyle(color: Colors.white54)),
    );
  }
}