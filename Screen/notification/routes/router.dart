import 'package:auto_route/auto_route.dart';

import '../../../widgets/widgets/home.dart';
import '../../Notifications/notification.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: NotificationPage, initial: true),
    AutoRoute(page: Home),
    AutoRoute(page: Home),
  ],
)
class $AppRouter {}
