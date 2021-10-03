import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class MartGridView extends StatefulWidget {
  const MartGridView({Key? key}) : super(key: key);

  @override
  _MartGridViewState createState() => _MartGridViewState();
}

class _MartGridViewState extends State<MartGridView> {
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: GridView.count(
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          crossAxisCount: 2,
          padding: EdgeInsets.all(MediaQuery.of(context).size.width / 60),
          children: List.generate(50, (int index) {
            return AnimationConfiguration.staggeredGrid(
              position: index,
              columnCount: 2,
              duration: Duration(milliseconds: 500),
              child: ScaleAnimation(
                duration: Duration(milliseconds: 900),
                curve: Curves.fastLinearToSlowEaseIn,
                child: FadeInAnimation(
                  child: Container(
                    margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.width / 30,
                        left: MediaQuery.of(context).size.width / 60,
                        right: MediaQuery.of(context).size.width / 60),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ),
            );
          })),
    );
  }
}
