import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/widgets/item-button.dart';
import 'package:food/widgets/item-text.dart';

import '../../../controller.dart';


class OatsIngrediantsScreen extends StatefulWidget {
  @override
  _OatsIngrediantsScreenState createState() => _OatsIngrediantsScreenState();
}

class _OatsIngrediantsScreenState extends State<OatsIngrediantsScreen> {
  var controller = ProjectController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView(
                    onPageChanged: (index) {
                      controller.index = index;
                      setState(() {});
                    },
                    children: List.generate(
                        controller.recipes_images.length,
                        (index) => Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.asset(
                                controller.vegetables_images[controller.index],
                                fit: BoxFit.fill,
                              ),
                            )),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 50),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: controller.vegetables_images.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                controller.index = index;
                                setState(() {});
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.only(left: 5, top: 150),
                                decoration: BoxDecoration(
                                    color: controller.index == index
                                        ? Colors.red
                                        : Colors.grey,
                                    borderRadius: BorderRadius.circular(25)),
                                height: 5,
                                width: controller.index == index ? 30 : 10,
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  MyText(text: 'Serving', size: 20, color: Colors.black),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.deepOrange,
                      ),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                controller.favourite_index--;
                                controller.favourite_index < 1
                                    ? controller.favourite_index = 1
                                    : controller.favourite_index;
                                setState(() {});
                              },
                              child: Icon(
                                Icons.remove_outlined,
                                color: Colors.white,
                              )),
                          MyText(
                              text: '${controller.favourite_index}',
                              size: 15,
                              color: Colors.white),
                          InkWell(
                              onTap: () {
                                controller.favourite_index++;
                                setState(() {});
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ))
                        ],
                      )),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.deepOrange[700],
                        value: controller.val1,
                        onChanged: (v) {
                          controller.val1 = v!;
                          setState(() {});
                        },
                      ),
                      MyText(
                          text: '1 Packet rolled oats',
                          size: 17,
                          color: Colors.black)
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.deepOrange[700],
                        value: controller.val2,
                        onChanged: (v) {
                          controller.val2 = v as bool;
                          setState(() {});
                        },
                      ),
                      MyText(
                          text: 'Half kg Lequid milk',
                          size: 17,
                          color: Colors.black)
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.deepOrange[700],
                        value: controller.val3,
                        onChanged: (v) {
                          controller.val3 = v!;
                          setState(() {});
                        },
                      ),
                      MyText(
                          text: '100 gm sugar (optional)',
                          size: 17,
                          color: Colors.black)
                    ],
                  ),
                ],
              ),
            ),
            MyButton(data: 'Shop Ingredients', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
