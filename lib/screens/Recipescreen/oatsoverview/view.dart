import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/screens/Recipescreen/oatsingrediants/view.dart';
import 'package:food/screens/Recipescreen/oatsrecipescreen/view.dart';
import 'package:food/screens/Recipescreen/oatsvideo/view.dart';
import 'package:food/widgets/item-text.dart';

import '../../../controller.dart';

class OatsOverviewScreen extends StatefulWidget {
  @override
  _OatsOverviewScreenState createState() => _OatsOverviewScreenState();
}
class _OatsOverviewScreenState extends State<OatsOverviewScreen> {
  var controller = ProjectController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Column(
          children: [
            Expanded(flex: 20,
              child: ListTile(
                title: MyText(
                    text: 'Oats porridge recipe', size: 20, color: Colors.black),
                trailing: IconButton(onPressed: (){controller.isPress=!controller.isPress;setState(() {

                });},icon: Icon(controller.isPress?Icons.favorite_outline_outlined:Icons.favorite,color: Colors.deepOrange[700],)),
              ),
            ),
            Expanded(flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20,right: 19),
                color: Colors.black12,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      margin: controller.ind == 0
                          ? const EdgeInsets.only(left: 0)
                          : controller.ind == 1
                              ? const EdgeInsets.only(left: 90)
                              : controller.ind == 2
                                  ? const EdgeInsets.only(left: 180)
                                  : controller.ind == 3
                                      ? const EdgeInsets.only(left: 270)
                                      : null,
                      color: Colors.deepOrange[700],
                      width: 50,
                    )
                  ],
                ),
              ),
            ),
            Expanded(flex: 10,
              child: TabBar(
                indicator: BoxDecoration(),
                onTap: (ind) {
                  controller.ind = ind;
                  setState(() {});
                },
                indicatorColor: Colors.white10,
                tabs:
                List.generate(4, (index) =>MyText(
                    text: controller.tab_bar_names[index], size: 11, color: Colors.black),),


              ),
            ),
            Expanded(flex: 200,
              child: TabBarView(
                children: [
                  Container(
                    color: Color(0xFFEEEEEE),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            controller.recipes_images[0],
                            fit: BoxFit.fill,
                          ),
                        ),
                        MyText(
                            text:
                                'Oats porridge ia a quick and healthy porridge \n made wwith oats ,water or milk. Both quik \n cooking oats or rolled oats can be used',
                            size: 15,
                            color: Colors.black54),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MyText(
                                text: 'Prep Time \n      1 Min',
                                size: 15,
                                color: Colors.black),
                            MyText(
                                text: 'cook Time \n      5 Min',
                                size: 15,
                                color: Colors.black),
                            MyText(
                                text: 'Total Time \n      6 Min',
                                size: 15,
                                color: Colors.black),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MyText(
                                text: 'Cuisine: \nAmerican,World',
                                size: 15,
                                color: Colors.black),
                            MyText(
                                text: 'Course \nBreakfast',
                                size: 15,
                                color: Colors.black),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MyText(
                                text: 'Diet: \nVegetarian',
                                size: 15,
                                color: Colors.black),
                            MyText(
                                text: 'Difficulty Level: \nEasy',
                                size: 15,
                                color: Colors.black),
                          ],
                        ),
                      ],
                    ),
                  ),
                  OatsIngrediantsScreen(),
                  OatsVideoScreen(),
                  OatsRecipeScreen()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}