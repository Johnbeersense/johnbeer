import 'package:closer_bottom_navigation_bar/screens/calcalendar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: ElevatedButton(
      onPressed: () {Get.to(() => TableEventsExample());},
      child: (Text('캘린더')),
    )));
  }
}
