import 'package:closer_bottom_navigation_bar/screens/story_upload.dart';
import 'package:closer_bottom_navigation_bar/timeline_models/user_model.dart';
import 'package:closer_bottom_navigation_bar/timeline_widget/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreatePostContainer extends StatefulWidget {
  final User currntUser;

  const CreatePostContainer({
    Key? key,
    required this.currntUser,
  }) : super(key: key);

  @override
  State<CreatePostContainer> createState() => _CreatePostContainerState();
}

class _CreatePostContainerState extends State<CreatePostContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Container(
        decoration: (BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            color: Colors.white)),
        padding: const EdgeInsets.fromLTRB(12, 15, 12, 0),
        height: 110,
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(imageUrl: widget.currntUser.imageUrl),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: '오늘의 데이트 스토리를 업로드 해보세요.')),
                ),
              ],
            ),
            const Divider(
              height: 7,
              thickness: 0.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Get.to(() => StoryUpload());
                  },
                  child: Row(
                    children: [
                      Icon(Icons.photo),
                      SizedBox(
                        width: 5,
                      ),
                      Text('사진 올리기')
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
