import 'package:flutter/material.dart';
import 'di/injection.dart';
import 'presentation/screens/coin_screen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize get_it dependency injection
  /// Android equivalent: Hilt auto-runs on @HiltAndroidApp
  await configureDependencies();

  runApp(const CoinApp());
}

class CoinApp extends StatelessWidget {
  const CoinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coin App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0D0D0D),
        colorScheme: ColorScheme.dark(
          primary: const Color(0xFFFFC107),
          surface: const Color(0xFF1A1A1A),
        ),
      ),
      home: const CoinScreen(),
    );
  }
}
