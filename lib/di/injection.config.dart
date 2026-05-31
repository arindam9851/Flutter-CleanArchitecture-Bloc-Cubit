// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/remote/api/coin_api.dart' as _i870;
import '../data/repository/coin_repository_impl.dart' as _i166;
import '../domain/repository/coin_repository.dart' as _i635;
import '../domain/usecase/get_coins_usecase.dart' as _i61;
import '../presentation/bloc/coin_bloc.dart' as _i535;
import '../presentation/cubit/coin_cubit.dart' as _i173;
import 'injection.dart' as _i464;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final networkModule = _$NetworkModule();
    gh.lazySingleton<_i361.Dio>(() => networkModule.dio);
    gh.factory<_i870.CoinApi>(() => _i870.CoinApi(gh<_i361.Dio>()));
    gh.lazySingleton<_i635.CoinRepository>(
      () => _i166.CoinRepositoryImpl(gh<_i870.CoinApi>()),
    );
    gh.factory<_i61.GetCoinsUseCase>(
      () => _i61.GetCoinsUseCase(gh<_i635.CoinRepository>()),
    );
    gh.factory<_i535.CoinBloc>(
      () => _i535.CoinBloc(gh<_i61.GetCoinsUseCase>()),
    );
    gh.factory<_i173.CoinCubit>(
      () => _i173.CoinCubit(gh<_i61.GetCoinsUseCase>()),
    );
    return this;
  }
}

class _$NetworkModule extends _i464.NetworkModule {}
