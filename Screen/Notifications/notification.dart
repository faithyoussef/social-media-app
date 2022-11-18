import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../../widgets/Bell.dart';
import '../notification/notification_notifier.dart';

import 'notification_button.dart';


class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  void initState() {
    const onActionReceivedMethod = NotificationNotifier.onActionReceivedMethod;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CenteredBellIcon(),
          NotificationButtons(),
        ],
      ),
    );
  }
}
PreferredSizeWidget? customAppBar() {
  return AppBar(
    title: const Text(
      "Awesome Notifications With Riverpod",
      style: TextStyle(fontWeight: FontWeight.w700),
    ),
    backgroundColor: Colors.black38,
  );
}
