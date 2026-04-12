// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:get_storage/get_storage.dart' as _i792;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

import '../../features/details/data/datasources/details_remote_data_source.dart'
    as _i35;
import '../../features/details/data/repositories/details_repository_data.dart'
    as _i10;
import '../../features/details/domain/repositories/details_repository_domain.dart'
    as _i684;
import '../../features/details/domain/use_cases/details_use_case.dart' as _i70;
import '../../features/discovery/data/datasources/discovery_remote_data_source.dart'
    as _i827;
import '../../features/discovery/data/repositories/discovery_repository_data.dart'
    as _i415;
import '../../features/discovery/domain/repositories/discovery_repository_domain.dart'
    as _i891;
import '../../features/discovery/domain/use_cases/discovery_use_case.dart'
    as _i421;
import '../../features/discovery/presentation/cubit/discovery_cubit.dart'
    as _i953;
import '../../features/shared/image_picker/data/datasources/image_picker_local_data_source.dart'
    as _i723;
import '../../features/shared/image_picker/data/repositories/image_picker_repository_data.dart'
    as _i967;
import '../../features/shared/image_picker/domain/repositories/image_picker_repository_domain.dart'
    as _i629;
import '../../features/shared/image_picker/domain/use_cases/image_picker_use_case.dart'
    as _i840;
import '../network/dio_client.dart' as _i667;
import '../services/gemini_service.dart' as _i846;
import '../services/local_keys_service.dart' as _i945;
import 'third_part.dart' as _i423;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final thirdPartyConfig = _$ThirdPartyConfig();
    gh.lazySingleton<_i792.GetStorage>(() => thirdPartyConfig.storage);
    gh.lazySingleton<_i454.SupabaseClient>(
      () => thirdPartyConfig.supabaseClient,
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => thirdPartyConfig.flutterSecureStorage,
    );
    gh.lazySingleton<_i667.DioClient>(() => _i667.DioClient());
    gh.lazySingleton<_i846.GeminiService>(() => _i846.GeminiService());
    gh.lazySingleton<_i723.BaseImagePickerRemoteDataSource>(
      () => _i723.ImagePickerLocalDataSource(),
    );
    gh.lazySingleton<_i35.BaseDetailsRemoteDataSource>(
      () => _i35.DetailsRemoteDataSource(gh<_i846.GeminiService>()),
    );
    gh.lazySingleton<_i629.ImagePickerRepositoryDomain>(
      () => _i967.ImagePickerRepositoryData(
        gh<_i723.BaseImagePickerRemoteDataSource>(),
      ),
    );
    gh.factory<_i840.ImagePickerUseCase>(
      () => _i840.ImagePickerUseCase(gh<_i629.ImagePickerRepositoryDomain>()),
    );
    gh.lazySingleton<_i827.BaseDiscoveryRemoteDataSource>(
      () => _i827.DiscoveryRemoteDataSource(
        gh<_i945.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i684.DetailsRepositoryDomain>(
      () => _i10.DetailsRepositoryData(gh<_i35.BaseDetailsRemoteDataSource>()),
    );
    gh.lazySingleton<_i891.DiscoveryRepositoryDomain>(
      () => _i415.DiscoveryRepositoryData(
        gh<_i827.BaseDiscoveryRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i70.DetailsUseCase>(
      () => _i70.DetailsUseCase(gh<_i684.DetailsRepositoryDomain>()),
    );
    gh.lazySingleton<_i421.DiscoveryUseCase>(
      () => _i421.DiscoveryUseCase(gh<_i891.DiscoveryRepositoryDomain>()),
    );
    gh.factory<_i953.DiscoveryCubit>(
      () => _i953.DiscoveryCubit(
        gh<_i421.DiscoveryUseCase>(),
        gh<_i840.ImagePickerUseCase>(),
      ),
    );
    gh.singleton<_i945.LocalKeysService>(() => _i945.LocalKeysService());
    return this;
  }
}

class _$ThirdPartyConfig extends _i423.ThirdPartyConfig {}
