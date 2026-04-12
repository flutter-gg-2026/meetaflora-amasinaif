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
import 'package:meet_a_flora/core/services/gemini_service.dart' as _i677;
import 'package:meet_a_flora/features/details/data/datasources/details_remote_data_source.dart'
    as _i275;
import 'package:meet_a_flora/features/details/data/repositories/details_repository_data.dart'
    as _i1054;
import 'package:meet_a_flora/features/details/domain/repositories/details_repository_domain.dart'
    as _i791;
import 'package:meet_a_flora/features/details/domain/use_cases/details_use_case.dart'
    as _i821;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initDetails({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i275.BaseDetailsRemoteDataSource>(
      () => _i275.DetailsRemoteDataSource(gh<_i677.GeminiService>()),
    );
    gh.lazySingleton<_i791.DetailsRepositoryDomain>(
      () =>
          _i1054.DetailsRepositoryData(gh<_i275.BaseDetailsRemoteDataSource>()),
    );
    gh.lazySingleton<_i821.DetailsUseCase>(
      () => _i821.DetailsUseCase(gh<_i791.DetailsRepositoryDomain>()),
    );
    return this;
  }
}
