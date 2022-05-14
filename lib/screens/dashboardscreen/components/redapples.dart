import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/screens/dashboardscreen/redapples/view.dart';
import 'package:food/widgets/item-text.dart';

import '../../../controller.dart';

class RedApplesComponent extends StatefulWidget{
  const RedApplesComponent({Key? key}) : super(key: key);

  @override
  _RedApplesComponentState createState() => _RedApplesComponentState();
}

class _RedApplesComponentState extends State<RedApplesComponent> {
  var controller=ProjectController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Container(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.only(top: 60,left: 15,right: 15),
                  margin: EdgeInsets.only(top: 40,bottom: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: 'Chicken', size: 16, color: Colors.black),
                      Text(
                        '1kg,with skin',
                      ),
                      Row(
                        children: [
                          MyText(text:'\$${controller.checken_price}',color: Colors.black,size: 20,),
                          Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.deepOrange,),
                              margin: const EdgeInsets.only(left: 35),
                              child:  InkWell(onTap: (){controller.checken_price++;setState(() {

                              });},child: Icon(Icons.add,color: Colors.white,)))
                        ],
                      )
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                      'images/chicken.jpg'),
                )
              ],
            ),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){return RedApplesScreen();}));},
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(top: 60,left: 15,right: 15),
                    margin: EdgeInsets.only(top: 40,bottom: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(text: ' Red Apples', size: 16, color: Colors.black),
                        Text(
                          '1kg,indian',
                        ),
                        Row(
                          children: [
                            MyText(text: '\$${controller.RedApples_price}',color: Colors.black,size: 20,),
                            Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.deepOrange,),
                                margin: const EdgeInsets.only(left: 35),
                                child: InkWell(onTap: (){controller.RedApples_price++;setState(() {

                                });},child: Icon(Icons.add,color: Colors.white,)))
                          ],
                        )
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      'images/11.jpg',
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );

  }
}
