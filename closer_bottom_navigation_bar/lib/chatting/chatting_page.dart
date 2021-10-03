import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'chatting_page_controller.dart';

class ChattingPage extends GetView<ChattingPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Chatting Page',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
