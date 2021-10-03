import 'package:cached_network_image/cached_network_image.dart';
import 'package:closer_bottom_navigation_bar/constant/common_size.dart';
import 'package:closer_bottom_navigation_bar/constant/item_card.dart';
import 'package:closer_bottom_navigation_bar/constant/item_list.dart';
import 'package:closer_bottom_navigation_bar/screens/my_page.dart';
import 'package:closer_bottom_navigation_bar/screens/product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class MartScreen extends StatelessWidget {
  const MartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Get.back();
          },
        ),
        title: Center(
          child: Text(
            '커플마트',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: common_l_gap),
            child: Row(children: [
              InkWell(
                child: Icon(Icons.search),
                onTap: () {},
              ),
              SizedBox(
                width: common_l_gap,
              ),
              InkWell(
                child: Icon(Icons.shopping_cart),
                onTap: () {},
              ),
            ]),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(common_gap),
                  child: Container(
                    child: (Row(
                      children: [
                        SizedBox(width: common_gap),
                        ClipOval(
                          child: CachedNetworkImage(
                            imageUrl: 'https://picsum.photos/id/40/100/100',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        SizedBox(width: common_gap),
                        ClipOval(
                          child: CachedNetworkImage(
                            imageUrl: 'https://picsum.photos/id/41/100/100',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(width: common_gap * 2),
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.attach_money),
                                    Icon(Icons.favorite),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text('0 원'), Text('0 포인트')],
                                )
                              ],
                            ),
                            SizedBox(width: common_l_gap * 2.2),
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.blueAccent,
                                ),
                                onPressed: () {
                                  Get.to(() => MyPage());
                                },
                                child: Text(
                                  'My Page',
                                  style: TextStyle(color: Colors.black),
                                )),
                            SizedBox(width: common_gap),
                          ],
                        )
                      ],
                    )),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black45, width: 1),
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.transparent),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          '전체 상품',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Spacer(),
                    PopupMenuButton(
                        itemBuilder: (context) => [
                              PopupMenuItem(child: Text('인기순'), value: 1),
                              PopupMenuItem(child: Text('가격순'), value: 2),
                              PopupMenuItem(child: Text('최신순'), value: 3),
                            ]),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  height: 35,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('전체 상품')),
                      SizedBox(
                        width: common_gap,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('기프티콘')),
                      SizedBox(
                        width: common_gap,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('기부')),
                      SizedBox(
                        width: common_gap,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('서비스')),
                      SizedBox(
                        width: common_gap,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('이모티콘')),
                      SizedBox(
                        width: common_gap,
                      ),
                    ],
                  ),
                ),
                GridView.builder(
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 5,
                        childAspectRatio: 0.73),
                    itemBuilder: (context, index) => ItemCard(
                          product: products[index],
                          press: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductScreen(
                                  product: products[index], imgList: [],
                                ),
                              )),
                        ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
