// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i4;

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../presentation/features/main/state/cubit/calculate_cubit.dart'
    as _i3;
import '../../presentation/features/main/view-models/main_view_model.dart'
    as _i7;
import '../../presentation/features/my-app/state/cubit/theme/theme_cubit.dart'
    as _i9;
import '../../presentation/features/my-app/view-models/my_app_view_model.dart'
    as _i8;
import '../../presentation/utils/config/theme/exapmle_theme.dart' as _i5;
import '../../presentation/utils/config/theme/main_theme.dart' as _i6;
import '../../presentation/utils/helpers/theme/theme_helper.dart' as _i10;
import 'path_provider_register_module.dart' as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final pathProviderRegisterModule = _$PathProviderRegisterModule();
    gh.factory<_i3.CalculateCubit>(() => _i3.CalculateCubit());
    await gh.lazySingletonAsync<_i4.Directory>(
      () => pathProviderRegisterModule.applicationDocumentsDirectory,
      instanceName: 'applicationDocuments',
      preResolve: true,
    );
    gh.lazySingletonAsync<_i4.Directory>(
      () => pathProviderRegisterModule.temporaryDirectory,
      instanceName: 'temporary',
    );
    gh.lazySingletonAsync<_i4.Directory>(
      () => pathProviderRegisterModule.applicationCacheDirectory,
      instanceName: 'applicationCache',
    );
    gh.lazySingletonAsync<_i4.Directory>(
      () => pathProviderRegisterModule.applicationSupportDirectory,
      instanceName: 'applicationSupport',
    );
    gh.lazySingleton<_i5.ExampleTheme>(() => _i5.ExampleTheme());
    gh.lazySingleton<_i6.MainTheme>(() => _i6.MainTheme());
    gh.lazySingleton<_i7.MainViewModel>(() => _i7.MainViewModel());
    gh.lazySingleton<_i8.MyAppViewModel>(() => _i8.MyAppViewModel());
    gh.lazySingleton<_i9.ThemeCubit>(
      () => _i9.ThemeCubit(),
      dispose: (i) => i.close(),
    );
    gh.singleton<_i10.ThemeHelper>(_i10.ThemeHelper());
    return this;
  }
}

class _$PathProviderRegisterModule extends _i11.PathProviderRegisterModule {}
