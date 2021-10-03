import 'package:carousel_slider/carousel_slider.dart';
import 'package:closer_bottom_navigation_bar/constant/item_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductScreen extends StatefulWidget {
  final Product? product;
  List<String> imgList;

  ProductScreen({Key? key, this.product, required this.imgList})
      : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int _current = 0;

  final List<String> imgList = [
    'https://scontent.ficn1-1.fna.fbcdn.net/v/t1.18169-9/26907073_1775804412469847_6499862533419353253_n.png?_nc_cat=100&ccb=1-5&_nc_sid=730e14&_nc_ohc=iByIAsmOSY0AX-0w_XU&_nc_ht=scontent.ficn1-1.fna&oh=65caac868c8f828e998729424e3bbadc&oe=617D56EA',
    'https://scontent.ficn1-1.fna.fbcdn.net/v/t1.18169-9/26814931_1775804409136514_5031506285197822583_n.png?_nc_cat=104&ccb=1-5&_nc_sid=730e14&_nc_ohc=heUbU1_ndSQAX8ma_KX&_nc_ht=scontent.ficn1-1.fna&oh=c2f0946f4f49f03bad9c80f1f31d3222&oe=617F7708',
    'https://scontent.ficn1-1.fna.fbcdn.net/v/t1.18169-9/26733478_1775804485803173_454036760448678138_n.png?_nc_cat=104&ccb=1-5&_nc_sid=730e14&_nc_ohc=pMTKEjXxsjIAX81UrLn&tn=Ex2AqIiX-jdtVTn-&_nc_ht=scontent.ficn1-1.fna&oh=7464f850f15384cb56b364ce23de56fc&oe=617DE8FA',
    'https://scontent.ficn1-1.fna.fbcdn.net/v/t1.18169-9/27066841_1775804709136484_123431960066552494_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_ohc=9qeUz-pJSTsAX8RlsgO&tn=Ex2AqIiX-jdtVTn-&_nc_ht=scontent.ficn1-1.fna&oh=d91016d397716ad3c21f338929dfd269&oe=617E142C',
    'https://scontent.ficn1-1.fna.fbcdn.net/v/t1.18169-9/26907404_1775804415803180_7147608508042527235_n.png?_nc_cat=103&ccb=1-5&_nc_sid=730e14&_nc_ohc=mBuxWjFFNzkAX_jT1q_&_nc_ht=scontent.ficn1-1.fna&oh=132c298d5d70349479b34a227561e6e5&oe=617D86D7',
    'https://scontent.ficn1-1.fna.fbcdn.net/v/t1.18169-9/26904124_1775804492469839_7573076526540753709_n.png?_nc_cat=102&ccb=1-5&_nc_sid=730e14&_nc_ohc=ne6RlXk7XtIAX9afo-v&_nc_ht=scontent.ficn1-1.fna&oh=71218a725a251003fb8c099aa81b3505&oe=617DEEAF',
    'https://scontent.ficn1-1.fna.fbcdn.net/v/t1.18169-9/27067105_1775804512469837_6494589724681408266_n.png?_nc_cat=109&ccb=1-5&_nc_sid=730e14&_nc_ohc=S4nqdrTds44AX_TXrFo&tn=Ex2AqIiX-jdtVTn-&_nc_ht=scontent.ficn1-1.fna&oh=8b5c855b6eb4b4eec59209f612a5eb2c&oe=617EF251',
    'https://scontent.ficn1-1.fna.fbcdn.net/v/t1.18169-9/26903760_1775804542469834_7713836471373849698_n.png?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_ohc=EvRp1Uz4cwMAX-0-DaD&_nc_ht=scontent.ficn1-1.fna&oh=cb82da44f084067de7a3dfff35c0123c&oe=617FE75D',
    'https://scontent.ficn1-1.fna.fbcdn.net/v/t1.18169-9/26814553_1775804555803166_1810181608366350958_n.png?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_ohc=nNVOXuBaLmUAX9IWhmn&_nc_ht=scontent.ficn1-1.fna&oh=07fa5b979cb2d241ae8809f3ee3ce177&oe=617DFFEB',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          onTap: () {
            Get.back();
          },
        ),
        actions: [
          InkWell(
            child: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            onTap: () {},
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      _current = index;
                    },
                    height: 300,
                    enlargeCenterPage: true,
                    autoPlay: false,
                    enableInfiniteScroll: true,
                  ),
                  items: imgList
                      .map((item) => Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Stack(
                                children: [
                                  Image.network(
                                    item,
                                    fit: BoxFit.cover,
                                    height: 300,
                                    width: 300,
                                  ),
                                  Positioned(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ))
                      .toList())),
          Column(
            children: [
              CarouselSlider(
                items: imgList(),
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget.imgList.map((url) {
                  int index = widget.imgList.indexOf(url);
                  return Container(
                    width: 8,
                    height: 8,
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 3,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index
                          ? Color.fromRGBO(0, 0, 0, 0.9)
                          : Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                  );
                }).toList(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
