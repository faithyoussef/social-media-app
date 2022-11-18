import 'package:awesome_notifications/awesome_notifications.dart';

Future<void> showScheduledNotification(int id, String channelKey, String title, String body, int interval) async {
  String localTZ = await AwesomeNotifications().getLocalTimeZoneIdentifier();

  AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: id,
        channelKey: channelKey,
        title: title,
        body: body,
      ),
      schedule: NotificationInterval(
        interval: interval,
        timeZone: localTZ,
        repeats: false,
      )
  );
}


Future<void> initAwseomeNotification() async{
  AwesomeNotifications().initialize(
    "resource://drawable/ic_launcher.png",
    [NotificationChannel(
      channelKey: "main_channel",
      channelName: "main_channel",
      channelDescription: "main_channel",
      enableLights: true,
      enableVibration: true,
    )],
  );
}
Future<void> requestpermission() async {
  AwesomeNotifications().isNotificationAllowed().then((allowed){
    if(!allowed){
      AwesomeNotifications().requestPermissionToSendNotifications();
    }
  });
}
Future<void> showNotification(int id, String channelKey, String title, String body) async {
  AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: id,
      channelKey: channelKey,
      title: title,
      body: body,
    ),
  );
}
