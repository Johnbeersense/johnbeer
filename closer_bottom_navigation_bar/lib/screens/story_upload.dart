import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:keyboard_actions/keyboard_actions_config.dart';

class StoryUpload extends StatefulWidget {
  const StoryUpload({Key? key}) : super(key: key);

  @override
  State<StoryUpload> createState() => _StoryUploadState();
}

class _StoryUploadState extends State<StoryUpload> {
  @override
  Widget build(BuildContext context) {
    TextEditingController writingTextController = TextEditingController();
    final FocusNode _nodeText1 = FocusNode();
    FocusNode writingTextFocus = FocusNode();
    File _image;
    final picker = ImagePicker();

    Future _getImage() async {
      final pickedFile = await picker.getImage(
          source: ImageSource.gallery, maxWidth: 650, maxHeight: 100);
      setState(() {
        _image = File(pickedFile!.path);
      });
    }

    KeyboardActionsConfig _buildConfig(BuildContext context) {
      return KeyboardActionsConfig(
        keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
        keyboardBarColor: Colors.grey[200],
        nextFocus: true,
        actions: [
          KeyboardActionsItem(
            displayArrows: false,
            focusNode: _nodeText1,
          ),
          KeyboardActionsItem(
            displayArrows: false,
            focusNode: writingTextFocus,
            toolbarButtons: [
              (node) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    color: Colors.grey[200],
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.add_photo_alternate, size: 28),
                        Text(
                          "사진 추가하기",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ],
          ),
        ],
      );
    }

    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('스토리 업로드하기'),
        centerTitle: true,
        actions: <Widget>[
          TextButton(
              onPressed: () {},
              child: Text(
                '업로드',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
      body: Stack(
        children: <Widget>[
          KeyboardActions(
            config: _buildConfig(context),
            child: Column(
              children: <Widget>[
                Container(
                    width: size.width,
                    height: size.height -
                        MediaQuery.of(context).viewInsets.bottom -
                        20,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 14.0, left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TextFormField(
                            autofocus: true,
                            focusNode: writingTextFocus,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '스토리 글을 작성해주세요.',
                              hintMaxLines: 4,
                            ),
                            controller: writingTextController,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                          ),
                          Divider(
                            height: MediaQuery.of(context).size.height / 4,
                            color: Colors.black,
                          ),
                          Container(
                            child: Text(
                              '등록할 사진 목록',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
