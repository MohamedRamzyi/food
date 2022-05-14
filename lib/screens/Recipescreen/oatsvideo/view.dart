import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/widgets/item-button.dart';
import 'package:food/widgets/item-text.dart';

import '../../../controller.dart';

class OatsVideoScreen extends StatelessWidget{
  var controller=ProjectController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Stack(alignment: Alignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(30)),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  controller.recipes_images[0],
                  fit: BoxFit.fill,
                ),
              ),
              Container(decoration: BoxDecoration(color: Colors.deepOrange,borderRadius: BorderRadius.circular(50)),padding: EdgeInsets.only(left: 7,right: 10,bottom: 10,top: 7),child: IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow_rounded,color: Colors.white,size: 40,)))
            ],
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(text: 'Oats porridge \n', size: 18, color:Colors.black),
              MyText(
                  text:
                  'Oats porridge ia a quick and healthy porridge \n made wwith oats ,water or milk. Both quik \n cooking oats or rolled oats can be used.oats\n is perfect for Breakfast ,Easy to cook ,So \n everyone choose oats for their breakfast',
                  size: 15,
                  color: Colors.black54),
            ],
          ),
            MyButton(data: 'View more Recipes', onPressed: (){})
        ],),
      ),
    );
  }
}
