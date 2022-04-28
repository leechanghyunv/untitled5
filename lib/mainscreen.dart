import 'package:flutter/material.dart';
import 'package:untitled5/notificationservice.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import 'package:lat_lng_to_timezone/lat_lng_to_timezone.dart' as tzmap;

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState(){
    super.initState();

    tz.initializeTimeZones();
  }
  // cancelAllNotifications
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                NotificationService().cancelAllNotifications();
              },
              child: Container(
                height: 40,
                width: 200,
                color: Colors.green,
                child: Center(
                  child: Text('cancle all notification'),
                ),
              ),
            ),
            SizedBox(height: 20,width: 20,),
            GestureDetector(
              onTap: (){
                NotificationService().showNotification(5, 'station', 'sadang');
              },
              child: Container(
                height: 40,
                width: 200,
                color: Colors.green,
                child: Center(
                  child: Text('Show notification'),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
