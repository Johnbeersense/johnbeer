import 'package:cached_network_image/cached_network_image.dart';
import 'package:closer_bottom_navigation_bar/constant/common_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Get.back();
          },
        ),
        title: Center(
          child: Text(
            'MY PAGE',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(common_gap),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.8, color: Colors.black87),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.transparent,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: common_gap,
                      ),
                      Row(
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
                                  onPressed: () {},
                                  child: Text(
                                    '무료충전하기',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  )),
                              SizedBox(width: common_gap),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black87, width: 0.1),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16)),
                              ),
                              height: MediaQuery.of(context).size.height / 10,
                              width: MediaQuery.of(context).size.width / 3.24,
                              child: TextButton(
                                onPressed: () {},
                                child: (Text('구매 종료 내역')),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black87, width: 0.1),
                                  color: Colors.transparent),
                              height: MediaQuery.of(context).size.height / 10,
                              width: MediaQuery.of(context).size.width / 3.24,
                              child: TextButton(
                                onPressed: () {},
                                child: (Text('물품 보관함')),
                              )),
                          Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black87, width: 0.1),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(16)),
                              ),
                              height: MediaQuery.of(context).size.height / 10,
                              width: MediaQuery.of(context).size.width / 3.24,
                              child: TextButton(
                                onPressed: () {},
                                child: (Text('쿠폰함')),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 0.5)),
              height: 80,
              child: (Row(
                children: [
                  Icon(Icons.arrow_back, size: 35),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    '진행중인 주문목록',
                    style: TextStyle(fontSize: 25),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward, size: 35)
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 80,
              child: (Row(
                children: [
                  Icon(Icons.compare_arrows_outlined, size: 35),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    '반품/ 교환 목록',
                    style: TextStyle(fontSize: 25),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward, size: 35)
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 80,
              child: (Row(
                children: [
                  Icon(Icons.change_history, size: 35),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    '기본 배송지 변경',
                    style: TextStyle(fontSize: 25),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward, size: 35)
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 80,
              child: (Row(
                children: [
                  Icon(Icons.fiber_smart_record, size: 35),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    '고객센터',
                    style: TextStyle(fontSize: 25),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward, size: 35)
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}
