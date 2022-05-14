import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/screens/dashboardscreen/populardeals/view.dart';
import 'package:food/widgets/item-text.dart';

import '../../../controller.dart';


class OatsRecipeScreen extends StatelessWidget {
  var controller=ProjectController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: MediaQuery.of(context).size.height/1.4,
            child: GridView.builder(itemCount: controller.recipes_images.length,
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
                itemBuilder: (context, index) {
                  return Container(
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.only(top: 60,left: 15,right: 15),
                          margin: EdgeInsets.only(top: 40,left: 10,right: 10,bottom: 05),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(text: controller.recipes[index], size: 16, color: Colors.black),
                              Text(
                                '1kg,with skin',
                              ),
                              MyPriceItem()
                            ],
                          ),
                        ),
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                              controller.recipes_images[index]),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
