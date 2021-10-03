import 'package:cached_network_image/cached_network_image.dart';
import 'package:closer_bottom_navigation_bar/timeline_data/data.dart';
import 'package:closer_bottom_navigation_bar/timeline_models/post_model.dart';
import 'package:closer_bottom_navigation_bar/timeline_widget/profile_avatar.dart';
import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final Post post;

  const PostContainer({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          color: Colors.white,
        ),
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _PostHeader(post: post),
              const SizedBox(height: 4),
              Text(post.caption),
              post.imageUrl != null
                  ? const SizedBox.shrink()
                  : const SizedBox(height: 6),
              post.imageUrl != null
                  ? Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: CachedNetworkImage(imageUrl: post.imageUrl),
                    )
                  : const SizedBox.shrink(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: _PostStats(post: post),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ProfileAvatar(imageUrl: onlineUsers[6].imageUrl),
                    const SizedBox(
                      width: 12,
                    ),
                    RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: '너무 재밌었어 매넌 가자 ~~',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        )
                      ]),
                    ),
                    Spacer(),
                    Text(
                      '5분 전',
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 12),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  final Post post;

  _PostHeader({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(imageUrl: post.user.imageUrl),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.name,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Text(
                    '${post.timeAgo}',
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                  )
                ],
              )
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert),
        )
      ],
    );
  }
}

class _PostStats extends StatefulWidget {
  final Post post;

  _PostStats({Key? key, required this.post}) : super(key: key);

  @override
  State<_PostStats> createState() => _PostStatsState();
}

class _PostStatsState extends State<_PostStats> {
  bool isPressed2 = true;

  bool isHighlighted = true;

  bool comment = true;

  bool share = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onHighlightChanged: (value) {
              setState(() {
                isHighlighted = !isHighlighted;
              });
            },
            onTap: () {
              setState(() {
                isPressed2 = !isPressed2;
              });
            },
            child: AnimatedContainer(
              margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
              height: isHighlighted ? 30 : 25,
              width: isHighlighted ? 30 : 25,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: isPressed2
                  ? Icon(
                      Icons.favorite_border,
                      color: Colors.pink.withOpacity(0.6),
                    )
                  : Icon(
                      Icons.favorite,
                      color: Colors.pink.withOpacity(1.0),
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  comment = !comment;
                });
              },
              child: Icon(Icons.chat, color: Colors.black),
            ),
          ),
          Spacer(),
          InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              setState(() {
                share = !share;
              });
            },
            child: Icon(Icons.share, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
