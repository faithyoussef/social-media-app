import 'package:injectable/injectable.dart';

import '../routes/router.gr.dart';

@module
abstract class InjectableModule {
  @singleton
  AppRouter get appRouter => AppRouter();
}
