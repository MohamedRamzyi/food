import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/screens/Recipescreen/oatsoverview/view.dart';
import 'package:food/widgets/item-text.dart';

import '../../../controller.dart';

class PopularDealTypesCompenent extends StatefulWidget{
  @override
  _PopularDealTypesCompenentState createState() => _PopularDealTypesCompenentState();
}

class _PopularDealTypesCompenentState extends State<PopularDealTypesCompenent> {
  var controller=ProjectController();
  @override
  Widget build(BuildContext context) {
    return               Expanded(
      flex: 30,
      child: ListView.separated(
        separatorBuilder: (context,index){return Container(
          margin: const EdgeInsets.only(left: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            Row(children: [ MyText(text: 'Oats porridge', size: 17, color: Colors.black),
              Card(

                child: MyText(text: 'New',color: Colors.white,size: 13,),
                color: Colors.red,
              )],),
            MyText(text: '\nBreakfast . American . Vegetarian', size: 14, color: Colors.black45)
          ],),
        );},
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return OatsOverviewScreen();}));
            },
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    controller.recipes_images[index],
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 18),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.8),
                            borderRadius: BorderRadius.circular(15)),
                        child: MyText(
                            text: '5-6 min',
                            size: 12,
                            color: Colors.black),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 22),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.8),
                            borderRadius: BorderRadius.circular(15)),
                        child: MyText(
                            text: 'Easy',
                            size: 12,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: controller.recipes_images.length,
      ),
    )
    ;
  }
}
