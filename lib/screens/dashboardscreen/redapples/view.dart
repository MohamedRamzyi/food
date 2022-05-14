import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/screens/dashboardscreen/checkout/view.dart';
import 'package:food/widgets/item-button.dart';
import 'package:food/widgets/item-text.dart';

import '../../../controller.dart';

class RedApplesScreen extends StatefulWidget {
  @override
  _RedApplesScreenState createState() => _RedApplesScreenState();
}

class _RedApplesScreenState extends State<RedApplesScreen> {
  var controller = ProjectController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 350),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: controller.apples_images.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                                color: controller.apple_index == index
                                    ? Colors.red
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(25)),
                            height: 5,
                            width: controller.apple_index == index ? 25 : 10,
                          );
                        }),
                  ),
                ),
                ListTile(
                  leading: Text(
                    'Red Apples',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        controller.isPress = !controller.isPress;
                        setState(() {});
                      },
                      icon: Icon(
                        controller.isPress
                            ? Icons.favorite_outlined
                            : Icons.favorite_outline,
                        color: Colors.red,
                      )),
                ),
                Container(
                  child: Text(
                    '1 kg ,Indian',
                  ),
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 20),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepOrange,
                          ),
                          child: Container(
                            child: Row(
                              children: [
                                InkWell(
                                    onTap: () {
                                      controller.index <= 1
                                          ? controller.index == 0
                                          : controller.index--;
                                      setState(() {});
                                    },
                                    child: Icon(
                                      Icons.remove_outlined,
                                      color: Colors.white,
                                    )),
                                MyText(
                                    text: '1', size: 15, color: Colors.white),
                                InkWell(
                                    onTap: () {
                                      controller.index++;
                                      setState(() {});
                                    },
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          )),
                      MyText(
                          text: '\$${controller.index}',
                          size: 20,
                          color: Colors.black)
                    ],
                  ),
                ),
                ListTile(
                  leading: MyText(
                    text: 'Product Details',
                    color: Colors.black,
                    size: 18,
                  ),
                  trailing: Icon(Icons.keyboard_arrow_down),
                ),
                Expanded(
                  child: MyText(
                      text:
                          'Milk Is An Excellent Source Of Vitamins And \n Minerals, Including "Nutrients Of Concern," Which \n Are Under-Onsumed By Many Populations.',
                      size: 13,
                      color: Colors.black45),
                ),
                ListTile(
                  leading: MyText(
                    text: 'Nutritions',
                    size: 18,
                    color: Colors.black,
                  ),
                  trailing: Container(
                    width: 80,
                    child: Row(
                      children: [
                        Card(
                          child: MyText(
                            text: '100gm',
                            color: Colors.white,
                            size: 13,
                          ),
                          color: Colors.deepOrange,
                        ),
                        Icon(Icons.arrow_forward_ios_sharp),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: MyText(
                    text: 'Review',
                    color: Colors.black,
                    size: 18,
                  ),
                  trailing: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.star,
                            color: Colors.yellow[600],
                          ),
                        );
                      }),
                ),
                Expanded(
                  flex: 2,
                  child: MyButton(
                    data: 'Add to cart',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CheckOutScreen();
                      }));
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(50)),
            ),
            height: MediaQuery.of(context).size.height / 2.5,
            clipBehavior: Clip.antiAlias,
            child: PageView.builder(
                onPageChanged: (index) {
                  controller.apple_index = index;
                  setState(() {});
                },
                itemCount: controller.apples_images.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    controller.apples_images[index],
                    fit: BoxFit.cover,
                  );
                }),
          )
        ],
      ),
    );
  }
}
