import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../dto/coin_dto.dart';
/// API client using plain Dio (no Retrofit code generation)
/// Avoids retrofit_generator compatibility issues
@injectable
class CoinApi {
  final Dio _dio;

  CoinApi(this._dio);

  /// GET https://api.coinpaprika.com/v1/coins
  /// Android equivalent: @GET("coins") suspend fun getCoins()
  Future<List<CoinDto>> getCoins() async {
    final response = await _dio.get('coins');
    final List<dynamic> data = response.data;
    return data.map((json) => CoinDto.fromJson(json)).toList();
  }
}