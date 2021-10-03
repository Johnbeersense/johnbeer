import 'package:closer_bottom_navigation_bar/timeline_data/data.dart';
import 'package:closer_bottom_navigation_bar/timeline_models/post_model.dart';
import 'package:closer_bottom_navigation_bar/timeline_widget/create_post_container.dart';
import 'package:closer_bottom_navigation_bar/timeline_widget/post_container.dart';
import 'package:flutter/material.dart';

class TimeLine extends StatefulWidget {
  const TimeLine({Key? key}) : super(key: key);

  @override
  _TimeLineState createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(height: 50, color: Colors.transparent),
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(
              currntUser: currentUser,
            ),
          ),
           SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final Post post = posts[index];
                return PostContainer(post: post);
              },
              childCount: posts.length
            ),
          )
        ],
      ),
    );
  }
}
