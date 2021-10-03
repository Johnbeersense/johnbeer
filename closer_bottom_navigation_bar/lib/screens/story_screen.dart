import 'package:closer_bottom_navigation_bar/screens/mart_screen.dart';
import 'package:closer_bottom_navigation_bar/screens/product_screen.dart';
import 'package:closer_bottom_navigation_bar/screens/time_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: ElevatedButton(
          onPressed: () {
            Get.to(() => TimeLine());
          },
          child: (Text('타임라인 스크린')),
        )),
        ElevatedButton(
            onPressed: () {
              Get.to(() => MartScreen());
            },
            child: Text('마트 스크린')),
        ElevatedButton(
            onPressed: () {
              Get.to(() => ProductScreen(imgList: [],));
            },
            child: Text('상품상세화면'))
      ],
    ));
  }
}
