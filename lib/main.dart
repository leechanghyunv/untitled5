import 'package:flutter/material.dart';
import 'package:untitled5/notificationservice.dart';
import 'package:lat_lng_to_timezone/lat_lng_to_timezone.dart' as tzmap;

import 'mainscreen.dart';

void main() {



  // WidgetsFlutterBinding.ensureInitialized();
  // NotificationService().initNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home:  MainScreen(),
    );
  }
}


