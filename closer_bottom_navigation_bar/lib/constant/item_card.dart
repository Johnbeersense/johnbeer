import 'package:closer_bottom_navigation_bar/constant/common_size.dart';
import 'package:closer_bottom_navigation_bar/constant/item_list.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  final Product product;
  final Function press;

  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isPressed2 = true;

  bool isHighlighted = true;

  bool comment = true;

  bool share = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {widget.press},
      child: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2.1,
              height: MediaQuery.of(context).size.height / 2.46,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black87),
                borderRadius: BorderRadius.circular(16),
                color: Colors.transparent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                            color: Colors.transparent,
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
                    ],
                  ),
                  SizedBox(width: common_gap),
                  Image.asset(widget.product.image),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.product.title,
                          style: TextStyle(color: Colors.black, fontSize: 11),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/point.png"),
                          Text(
                            "\$${widget.product.price}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
