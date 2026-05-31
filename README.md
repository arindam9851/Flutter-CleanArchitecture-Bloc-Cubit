# 🪙 Coin App — Flutter Clean Architecture (MVVM & MVI)

A Flutter implementation of Clean Architecture using **Bloc/Cubit** for state management, mirroring the Android Clean Architecture project built with Kotlin + ViewModel + StateFlow.

---

## 📱 What This App Does

Fetches live cryptocurrency data from the **CoinPaprika API** and displays it in a list. Demonstrates two architecture patterns side by side:
- **Tab 1 — Cubit (MVVM):** UI calls functions directly on Cubit
- **Tab 2 — Bloc (MVI):** UI sends Events (Intents) to Bloc

---

## 🏗 Architecture — 3 Layers

```
┌─────────────────────────────────────┐
│         Presentation Layer          │
│   Cubit (MVVM) │ Bloc (MVI)  │ UI  │
└────────────────┬────────────────────┘
                 │ calls
┌────────────────▼────────────────────┐
│           Domain Layer              │
│   UseCases │ Models │ Repository    │
│              Interface              │
└────────────────┬────────────────────┘
                 │ implements
┌────────────────▼────────────────────┐
│            Data Layer               │
│   API │ DTO │ Mapper │ Repository   │
│              Impl                   │
└─────────────────────────────────────┘
```

---

## 📁 Project Structure

```
lib/
├── data/
│   ├── remote/
│   │   ├── api/
│   │   │   └── coin_api.dart          # Dio API client
│   │   └── dto/
│   │       └── coin_dto.dart          # Raw API response model
│   ├── mapper/
│   │   └── coin_mapper.dart           # DTO → Domain model
│   └── repository/
│       └── coin_repository_impl.dart  # Repository implementation
│
├── domain/
│   ├── model/
│   │   └── coin_domain_model.dart     # Pure domain entity
│   ├── repository/
│   │   └── coin_repository.dart       # Abstract interface
│   └── usecase/
│       └── get_coins_usecase.dart     # Business logic
│
├── presentation/
│   ├── cubit/                         # MVVM style
│   │   ├── coin_cubit.dart
│   │   └── coin_state.dart
│   ├── bloc/                          # MVI style
│   │   ├── coin_bloc.dart
│   │   ├── coin_event.dart            # = CoinIntent in Android
│   │   └── coin_state.dart
│   └── screens/
│       └── coin_screen.dart
│
└── di/
    └── injection.dart                 # Dependency injection setup
```

---

## 🔄 Android → Flutter Mapping

| Android (Kotlin) | Flutter (Dart) | Purpose |
|---|---|---|
| ViewModel | Cubit / Bloc | State management |
| StateFlow | BlocBuilder | Reactive UI updates |
| Hilt | get_it + injectable | Dependency injection |
| Retrofit | Dio | HTTP networking |
| data class | Freezed `abstract class` | Immutable models |
| sealed class | Freezed union / sealed | State variants |
| CoinIntent | CoinEvent | User actions in MVI |
| @Inject | @injectable | DI annotation |
| @Singleton | @lazySingleton | Singleton scope |
| @Binds | @LazySingleton(as: X) | Interface binding |
| @Module @Provides | @module | External dependencies |

---

## 🧠 MVVM vs MVI

### Cubit — MVVM Style
```dart
// UI calls function directly on Cubit
context.read<CoinCubit>().fetchCoins();

// Android equivalent:
// viewModel.loadCoins()
```

### Bloc — MVI Style
```dart
// UI sends an Event (Intent) to Bloc
context.read<CoinBloc>().add(FetchCoins());

// Android equivalent:
// viewModel.onIntent(CoinIntent.FetchCoins)
```

| | Cubit (MVVM) | Bloc (MVI) |
|---|---|---|
| UI triggers | Direct function call | Sends an Event |
| Boilerplate | Less | More |
| Traceability | Moderate | Full event history |
| Best for | Simple screens | Complex interactions |

---

## 📦 Dependencies

```yaml
dependencies:
  flutter_bloc: ^9.1.1      # Cubit + Bloc state management
  get_it: ^9.2.1            # Dependency injection
  injectable: ^3.0.0        # DI annotations
  dio: ^5.7.0               # HTTP networking
  freezed_annotation: ^3.1.0 # Immutable models
  json_annotation: ^4.9.0   # JSON serialization

dev_dependencies:
  build_runner: ^2.15.0     # Code generation runner
  freezed: ^3.2.5           # Freezed code generator
  injectable_generator: ^3.0.2 # Injectable code generator
  json_serializable: ^6.9.5  # JSON code generator
```

---

## ⚠️ Important: Freezed 3.x Requires `abstract class`

A key difference from older Freezed versions — **always use `abstract class`**:

```dart
// ❌ Freezed 2.x (old way — causes "missing implementations" error)
@freezed
class CoinDomainModel with _$CoinDomainModel { ... }

// ✅ Freezed 3.x (correct way)
@freezed
abstract class CoinDomainModel with _$CoinDomainModel { ... }
```

---

## 🔄 Data Flow

### MVVM (Cubit)
```
UI Widget
  → context.read<CoinCubit>().fetchCoins()
    → GetCoinsUseCase()
      → CoinRepository.getCoins()
        → CoinApi.getCoins()          # HTTP GET /coins
          → List<CoinDto>             # Raw JSON response
        → CoinMapper.toDomainList()   # DTO → Domain
      → List<CoinDomainModel>
    → emit(CoinLoaded(coins))
  → BlocBuilder rebuilds UI
```

### MVI (Bloc)
```
UI Widget
  → context.read<CoinBloc>().add(FetchCoins())
    → _onFetchCoins() handler
      → GetCoinsUseCase()
        → CoinRepository.getCoins()
          → CoinApi.getCoins()        # HTTP GET /coins
            → List<CoinDto>           # Raw JSON response
          → CoinMapper.toDomainList() # DTO → Domain
        → List<CoinDomainModel>
      → emit(CoinLoaded(coins))
  → BlocBuilder rebuilds UI
```

---

## 🏃 How to Run

### Step 1 — Install dependencies
```bash
flutter pub get
```

### Step 2 — Generate code
```bash
dart run build_runner build
```

### Step 3 — Run the app
```bash
flutter run
```

### After any model change — regenerate
```bash
dart run build_runner clean
dart run build_runner build
```

---

## 🌐 API Used

**CoinPaprika** — free, no API key required

```
GET https://api.coinpaprika.com/v1/coins
```

Sample response:
```json
[
  {
    "id": "btc-bitcoin",
    "name": "Bitcoin",
    "symbol": "BTC",
    "rank": 1,
    "is_new": false,
    "is_active": true,
    "type": "coin"
  }
]
```

---

## 🧩 Dependency Injection Flow

```
NetworkModule
  └── provides Dio (lazySingleton)
        └── CoinApi (injectable)
              └── CoinRepositoryImpl (lazySingleton as CoinRepository)
                    └── GetCoinsUseCase (injectable)
                          ├── CoinCubit (injectable)
                          └── CoinBloc (injectable)
```

All registered in `injection.dart`, generated into `injection.config.dart` by `injectable_generator`.

---

## 🔑 Key Concepts Learned

1. **Clean Architecture** keeps layers independent — domain knows nothing about data or UI
2. **DTO vs Domain Model** — DTO matches API shape, Domain model matches business needs
3. **Mapper** converts between layers keeping them decoupled
4. **UseCase** encapsulates single business operations
5. **Cubit** = simpler MVVM, **Bloc** = structured MVI with Events
6. **Freezed 3.x** requires `abstract class` keyword
7. **get_it + injectable** auto-wires dependencies like Hilt in Android