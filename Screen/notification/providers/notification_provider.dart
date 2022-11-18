
import 'package:riverpod/riverpod.dart';

import '../notification_notifier.dart';
import '../notification_state.dart';
import '../notification_state.dart';

final notificationProvider =
    StateNotifierProvider<NotificationNotifier, NotificationState>(
  (ref) => NotificationNotifier(),
);
