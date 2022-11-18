// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'notification/core/injectable_module.dart' as _i4;
//import 'router.gr.dart' ; // ignore_for_file: unnecessary_lambdas
import 'notification/routes/router.gr.dart'as _i3;
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
    _i1.GetIt get, {
      String? environment,
      _i2.EnvironmentFilter? environmentFilter,
    }) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final injectableModule = _$InjectableModule();
  gh.singleton<_i3.AppRouter>(injectableModule.appRouter);
  return get;
}

class _$InjectableModule extends _i4.InjectableModule {}
