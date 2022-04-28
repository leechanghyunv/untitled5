// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:timezone/timezone.dart' as tz;
// import 'package:timezone/data/latest.dart' as tz;
// import 'package:lat_lng_to_timezone/lat_lng_to_timezone.dart' as tzmap;
//
// class NotificationService{
//   static final NotificationService _notificationService = NotificationService._internal();
//
//   factory NotificationService(){
//     return _notificationService;
//   }
//
//   final FlutterLocalNotificationsPlugin flutterLocalNotificationPlugin =
//   FlutterLocalNotificationsPlugin();
//
//   NotificationService._internal();
//
//   Future<void> initNotification() async {
//     final AndroidInitializationSettings androidInitializationSettings =
//     AndroidInitializationSettings('@drawable/launch_background');
//
//     final IOSInitializationSettings iOSInitializationSettings =
//         IOSInitializationSettings(
//           requestAlertPermission: false,
//           requestBadgePermission: false,
//           requestSoundPermission: false,
//         );
//
//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//           android: androidInitializationSettings,
//           iOS: iOSInitializationSettings,
//         );
//
//     await flutterLocalNotificationPlugin.initialize(initializationSettings);
//   }
//
//   Future<void> showNotification(int id, String title, String body) async{
//     await flutterLocalNotificationPlugin.zonedSchedule(
//       id,
//       title,
//       body,
//       tz.TZDateTime.now(tz.local).add(Duration(seconds: 0)),
//       const NotificationDetails(
//         android: AndroidNotificationDetails(
//             'main_channel',
//             'Main Channel',
//             importance: Importance.max,
//             priority: Priority.max,
//             icon: '@drawable/launch_background'
//         ),
//         iOS: IOSNotificationDetails(
//           sound: 'defalut.wav',
//           presentAlert: true,
//           presentBadge: true,
//           presentSound: true,
//         )
//       ),
//       uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
//       androidAllowWhileIdle: true,
//     );
//   }
//   Future<void> cancelAllNotifications() async{
//     await flutterLocalNotificationPlugin.cancelAll();
//   }
// }