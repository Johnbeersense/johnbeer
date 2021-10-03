import 'package:closer_bottom_navigation_bar/screens/calcalendar.dart';
import 'package:closer_bottom_navigation_bar/screens/schedule.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateScreen extends StatefulWidget {
  const DateScreen({Key? key}) : super(key: key);

  @override
  _DateScreenState createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => ScheduleRegistration());
              },
              child: (Text('일정 등록')),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => TableEventsExample());
                },
                child: Text('달력'))
          ],
        ),
      ),
    );
  }
}
