// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:meet_a_flora/core/services/local_keys_service.dart' as _i95;
import 'package:meet_a_flora/features/discovery/data/datasources/discovery_remote_data_source.dart'
    as _i1022;
import 'package:meet_a_flora/features/discovery/data/repositories/discovery_repository_data.dart'
    as _i266;
import 'package:meet_a_flora/features/discovery/domain/repositories/discovery_repository_domain.dart'
    as _i902;
import 'package:meet_a_flora/features/discovery/domain/use_cases/discovery_use_case.dart'
    as _i954;
import 'package:meet_a_flora/features/discovery/presentation/cubit/discovery_cubit.dart'
    as _i817;
import 'package:meet_a_flora/features/shared/image_picker/domain/use_cases/image_picker_use_case.dart'
    as _i476;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initDiscovery({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i1022.BaseDiscoveryRemoteDataSource>(
      () => _i1022.DiscoveryRemoteDataSource(
        gh<_i95.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i902.DiscoveryRepositoryDomain>(
      () => _i266.DiscoveryRepositoryData(
        gh<_i1022.BaseDiscoveryRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i954.DiscoveryUseCase>(
      () => _i954.DiscoveryUseCase(gh<_i902.DiscoveryRepositoryDomain>()),
    );
    gh.factory<_i817.DiscoveryCubit>(
      () => _i817.DiscoveryCubit(
        gh<_i954.DiscoveryUseCase>(),
        gh<_i476.ImagePickerUseCase>(),
      ),
    );
    return this;
  }
}
